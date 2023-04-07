import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init({required StepsBalancer balancer}) = _InitExpertEvent;

  const factory ExpertEvent.updateBalancer({List<int>? stepsRateList, int? stocksAmount, double? balance}) =
      _UpdateBalancerExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  const ExpertState._();

  factory ExpertState.initialized({
    required StepsBalancer balancer,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required String message,
  }) = _ErrorExpertState;
}

class ExpertBloc extends Bloc<ExpertEvent, ExpertState> {
  ExpertBloc({required StepsBalancer balancer}) : super(ExpertState.initialized(balancer: balancer)) {
    on<ExpertEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        updateBalancer: (event) => _updateBalancer(event, emitter),
      ),
    );
  }

  void _init(_InitExpertEvent event, Emitter<ExpertState> emitter) {
    emitter(ExpertState.initialized(balancer: state.balancer));
  }

  Future<void> _updateBalancer(_UpdateBalancerExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.inProgress(balancer: state.balancer));
    final balancer = StepsBalancer.create(
      stepRateList: event.stepsRateList ?? state.balancer.stepRateList,
      tradeBalance: event.balance ?? state.balancer.tradeBalance,
      stocksAmount: event.stocksAmount ?? state.balancer.stocksAmount,
    );
    await getIt<HiveStorage>().saveStepsBalancer(balancer);
    emitter(ExpertState.initialized(
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
