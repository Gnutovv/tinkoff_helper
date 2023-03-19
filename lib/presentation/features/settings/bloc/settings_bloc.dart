import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/format.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/user_account.dart';
import 'package:tinkoff_helper/network/generated/operations.pb.dart';
import 'package:tinkoff_helper/network/generated/users.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

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

  bool get hasUserAccount => maybeMap(
        orElse: () => false,
        initialized: (state) => state.userAccount != null,
      );

  UserAccount? get userAccount => mapOrNull<UserAccount?>(
        initialized: (state) => state.userAccount,
      );

  const SettingsState._();

  factory SettingsState.initialized({
    required String apiKey,
    required UserAccount? userAccount,
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

  SettingsBloc({required String apiKey}) : super(SettingsState.initialized(userAccount: null, apiKey: apiKey)) {
    on<SettingsEvent>(
      (event, emitter) => event.map(checkApiKey: (event) => _checkApiKey(event, emitter)),
    );
  }

  Future<void> _checkApiKey(_CheckApiKeySettingsEvent event, Emitter<SettingsState> emitter) async {
    final newApiKey = event.apiKey;
    final oldApiKey = state.apiKey;

    getIt<TinkoffApiService>().updateCallOptions(newApiKey);

    emitter(SettingsState.inProgress(apiKey: newApiKey));
    try {
      final accResponse = await tinkoffApiService.usersServiceClient
          .getAccounts(GetAccountsRequest(), options: tinkoffApiService.callOptions);
      final portfolioResponse = await tinkoffApiService.operationsServiceClient.getPortfolio(
        PortfolioRequest(
          accountId: accResponse.accounts.first.id,
          currency: PortfolioRequest_CurrencyRequest.RUB,
        ),
        options: tinkoffApiService.callOptions,
      );
      final withdrawResponse = await tinkoffApiService.operationsServiceClient.getWithdrawLimits(
        WithdrawLimitsRequest(accountId: accResponse.accounts.first.id),
        options: tinkoffApiService.callOptions,
      );
      final userAccount = UserAccount.newUser(
        accountId: accResponse.accounts.first.id,
        accountName: accResponse.accounts.first.name,
        totalBalance: portfolioResponse.totalAmountPortfolio.units.toInt() +
            nanoToUnit(portfolioResponse.totalAmountPortfolio.nano),
        tradeBalance: getIt<HiveStorage>().tradeBalance,
        freeBalance: withdrawResponse.money.first.units.toInt() + nanoToUnit(withdrawResponse.money.first.nano),
      );
      await getIt<HiveStorage>().setApiKey(newApiKey);
      emitter(
          SettingsState.initialized(userAccount: userAccount, apiKey: newApiKey, checkStatus: CheckApiKeyStatuses.ok));
    } catch (error) {
      getIt<TinkoffApiService>().updateCallOptions(oldApiKey);
      emitter(SettingsState.error(message: error.toString(), apiKey: newApiKey));
      emitter(
          SettingsState.initialized(userAccount: null, apiKey: state.apiKey, checkStatus: CheckApiKeyStatuses.failed));
    }
  }
}
