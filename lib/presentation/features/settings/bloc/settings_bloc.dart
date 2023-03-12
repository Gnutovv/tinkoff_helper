import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/generated/users.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';

part 'settings_bloc.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.checkApiKey({required String apiKey}) = _CheckApiKeySettingsEvent;
}

@freezed
class SettingsState with _$SettingsState {
  bool get progress => maybeMap<bool>(
        orElse: () => false,
        inProgress: (state) => true,
      );

  bool get hasError => maybeMap<bool>(
        orElse: () => false,
        error: (state) => true,
      );

  String? get errorMessage => maybeMap<String?>(
        orElse: () => null,
        error: (state) => state.message,
      );

  const SettingsState._();

  factory SettingsState.initialized({
    required String apiKey,
    @Default(CheckApiKeyStatuses.readyToCheck) CheckApiKeyStatuses checkStatus,
  }) = _InitializedSettingsState;

  factory SettingsState.inProgress({
    required String apiKey,
    @Default(CheckApiKeyStatuses.readyToCheck) CheckApiKeyStatuses checkStatus,
  }) = _InProgressSettingsState;

  factory SettingsState.error({
    required String message,
    required String apiKey,
    @Default(CheckApiKeyStatuses.failed) CheckApiKeyStatuses checkStatus,
  }) = _ErrorSettingsState;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final tinkoffApiService = getIt<TinkoffApiService>();

  SettingsBloc({required String apiKey}) : super(SettingsState.initialized(apiKey: apiKey)) {
    on<SettingsEvent>(
      (event, emitter) => event.map(checkApiKey: (event) => _checkApiKey(event, emitter)),
    );
  }

  Future<void> _checkApiKey(_CheckApiKeySettingsEvent event, Emitter<SettingsState> emitter) async {
    final newApiKey = event.apiKey;
    final oldApiKey = state.apiKey;

    apiKeyGlobal = newApiKey;
    getIt<TinkoffApiService>().updateCallOptions();

    emitter(SettingsState.inProgress(apiKey: newApiKey));
    try {
      final request = GetAccountsRequest();
      final res = await tinkoffApiService.sandboxServiceClient.getSandboxAccounts(
        request,
        options: tinkoffApiService.callOptions,
      );
      print(res.toString());
      await getIt<SharedPreferences>().setString('apiKey', apiKeyGlobal!);
      emitter(SettingsState.initialized(apiKey: newApiKey, checkStatus: CheckApiKeyStatuses.ok));
    } catch (error) {
      apiKeyGlobal = oldApiKey;
      getIt<TinkoffApiService>().updateCallOptions();
      emitter(SettingsState.error(message: error.toString(), apiKey: oldApiKey));
      emitter(SettingsState.initialized(apiKey: oldApiKey, checkStatus: CheckApiKeyStatuses.failed));
    }
  }
}
