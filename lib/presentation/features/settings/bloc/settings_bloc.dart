import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/generated/users.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/storage/secure_storage.dart';

part 'settings_bloc.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.checkToken({required String apiKey}) = _CheckTokenSettingsEvent;

  const factory SettingsEvent.switchAccount({required Account account}) = _SwitchAccountsSettingsEvent;
}

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  List<Account>? get accounts => mapOrNull<List<Account>?>(
        success: (state) => state.accounts,
      );

  bool get success => maybeMap<bool>(success: (_) => true, orElse: () => false);

  factory SettingsState.noApiKey() = _NoApiKyeSettingsState;

  factory SettingsState.inProgress({required String apiKey}) = _InProgressSettingsState;

  factory SettingsState.success({required String apiKey, required List<Account> accounts}) = _SuccessSettingsState;

  factory SettingsState.failed({
    required String message,
    required String apiKey,
  }) = _FailedSettingsState;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final _tinkoffApiService = getIt<TinkoffApiService>();
  final _secureStorage = getIt<SecureStorage>();

  SettingsBloc() : super(SettingsState.noApiKey()) {
    on<SettingsEvent>((event, emitter) => event.map(
          checkToken: (event) => _checkToken(event, emitter),
          switchAccount: (event) => _switchAccount(event, emitter),
        ));
  }

  Future<void> _checkToken(_CheckTokenSettingsEvent event, Emitter<SettingsState> emitter) async {
    final newApiKey = event.apiKey;
    _tinkoffApiService.updateCallOptions(newApiKey);

    emitter(SettingsState.inProgress(apiKey: newApiKey));

    try {
      final result = await _tinkoffApiService.usersServiceClient.getAccounts(
        GetAccountsRequest(),
        options: _tinkoffApiService.callOptions,
      );
      await _secureStorage.saveKey(newApiKey);
      _tinkoffApiService.updateAccountData(result.accounts.first);
      emitter(SettingsState.success(apiKey: newApiKey, accounts: result.accounts));
    } catch (error) {
      emitter(SettingsState.failed(message: error.toString(), apiKey: newApiKey));
    }
  }

  void _switchAccount(_SwitchAccountsSettingsEvent event, Emitter<SettingsState> emitter) async {
    _tinkoffApiService.updateAccountData(event.account);
    emitter(SettingsState.success(apiKey: _secureStorage.key, accounts: state.accounts!));
  }
}
