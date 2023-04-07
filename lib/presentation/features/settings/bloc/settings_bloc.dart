import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/generated/users.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

part 'settings_bloc.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.checkToken({required String apiKey}) = _CheckTokenSettingsEvent;
}

@freezed
class SettingsState with _$SettingsState {
  bool get tokenChecked => maybeMap(
        orElse: () => false,
        initialized: (state) => state.checkStatus == CheckApiKeyStatuses.ok,
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
      (event, emitter) => event.map(checkToken: (event) => _checkToken(event, emitter)),
    );
  }

  Future<void> _checkToken(_CheckTokenSettingsEvent event, Emitter<SettingsState> emitter) async {
    final newApiKey = event.apiKey;
    final oldApiKey = state.apiKey;
    tinkoffApiService.updateCallOptions(newApiKey);

    emitter(SettingsState.inProgress(apiKey: newApiKey));

    try {
      await tinkoffApiService.usersServiceClient.getAccounts(
        GetAccountsRequest(),
        options: tinkoffApiService.callOptions,
      );
      await getIt<HiveStorage>().saveApiKey(newApiKey);
      emitter(SettingsState.initialized(
        apiKey: newApiKey,
        checkStatus: CheckApiKeyStatuses.ok,
      ));
    } catch (error) {
      tinkoffApiService.updateCallOptions(oldApiKey);
      emitter(SettingsState.error(message: error.toString(), apiKey: newApiKey));
      emitter(SettingsState.initialized(
        apiKey: state.apiKey,
        checkStatus: CheckApiKeyStatuses.failed,
      ));
    }
  }
}
