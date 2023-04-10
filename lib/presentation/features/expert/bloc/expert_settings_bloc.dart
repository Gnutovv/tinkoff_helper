import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

part 'expert_settings_bloc.freezed.dart';

@freezed
class ExpertSettingsEvent with _$ExpertSettingsEvent {
  const ExpertSettingsEvent._();

  const factory ExpertSettingsEvent.init({required StepsBalancer balancer}) = _InitExpertSettingsEvent;

  const factory ExpertSettingsEvent.updateBalancer({List<int>? stepsRateList, int? stocksAmount, double? balance}) =
      _UpdateBalancerExpertSettingsEvent;
}

@freezed
class ExpertSettingsState with _$ExpertSettingsState {
  const ExpertSettingsState._();

  factory ExpertSettingsState.initialized({
    required StepsBalancer balancer,
  }) = _InitializedExpertSettingsState;

  factory ExpertSettingsState.inProgress({
    required StepsBalancer balancer,
  }) = _InProgressExpertSettingsState;

  factory ExpertSettingsState.error({
    required StepsBalancer balancer,
    required String message,
  }) = _ErrorExpertSettingsState;
}

class ExpertSettingsBloc extends Bloc<ExpertSettingsEvent, ExpertSettingsState> {
  ExpertSettingsBloc({required StepsBalancer balancer}) : super(ExpertSettingsState.initialized(balancer: balancer)) {
    on<ExpertSettingsEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        updateBalancer: (event) => _updateBalancer(event, emitter),
      ),
    );
  }

  void _init(_InitExpertSettingsEvent event, Emitter<ExpertSettingsState> emitter) {
    emitter(ExpertSettingsState.initialized(balancer: state.balancer));
  }

  Future<void> _updateBalancer(_UpdateBalancerExpertSettingsEvent event, Emitter<ExpertSettingsState> emitter) async {
    emitter(ExpertSettingsState.inProgress(balancer: state.balancer));
    final balancer = StepsBalancer.create(
      stepRateList: event.stepsRateList ?? state.balancer.stepRateList,
      tradeBalance: event.balance ?? state.balancer.tradeBalance,
      stocksAmount: event.stocksAmount ?? state.balancer.stocksAmount,
    );
    await getIt<HiveStorage>().saveStepsBalancer(balancer);
    emitter(ExpertSettingsState.initialized(
      balancer: balancer,
    ));
  }
// Future<void> _updateTotalBalance(_UpdateTotalBalanceExpertEvent event, Emitter<ExpertState> emitter) async {
//   emitter(ExpertState.inProgress(account: state.account, balancer: state.balancer));
//   try {
//     final portfolioResponse = await tinkoffApiService.operationsServiceClient.getPortfolio(
//       PortfolioRequest(
//         accountId: state.account!.accountId,
//         currency: PortfolioRequest_CurrencyRequest.RUB,
//       ),
//       options: tinkoffApiService.callOptions,
//     );
//     final withdrawResponse = await tinkoffApiService.operationsServiceClient.getWithdrawLimits(
//       WithdrawLimitsRequest(accountId: state.account!.accountId),
//       options: tinkoffApiService.callOptions,
//     );
//     final newUser = UserAccount.newUser(
//       accountId: state.account!.accountId,
//       accountName: state.account!.accountName,
//       totalBalance: unitNanoToDouble(
//         portfolioResponse.totalAmountPortfolio.units,
//         portfolioResponse.totalAmountPortfolio.nano,
//       ),
//       tradeBalance: getIt<HiveStorage>().tradeBalance,
//       freeBalance: unitNanoToDouble(
//         withdrawResponse.money.first.units,
//         withdrawResponse.money.first.nano,
//       ),
//     );
//     emitter(ExpertState.initialized(account: newUser, balancer: state.balancer));
//   } catch (error) {
//     emitter(ExpertState.error(account: state.account, balancer: state.balancer, message: error.toString()));
//     emitter(ExpertState.initialized(account: state.account, balancer: state.balancer));
//   }
// }
}
