import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/expert/user_account.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init({required UserAccount userAccount}) = _InitExpertEvent;

  const factory ExpertEvent.updateBalancer({List<int>? stepsRateList, int? stocksAmount}) = _UpdateBalancerExpertEvent;

  const factory ExpertEvent.updateTradeBalance({required double newBalance}) = _UpdateTradeBalanceExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  const ExpertState._();

  factory ExpertState.initialized({
    required StepsBalancer balancer,
    UserAccount? account,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
    UserAccount? account,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    UserAccount? account,
    required String message,
  }) = _ErrorExpertState;
}

class ExpertBloc extends Bloc<ExpertEvent, ExpertState> {
  final tinkoffApiService = getIt<TinkoffApiService>();

  ExpertBloc({required StepsBalancer balancer}) : super(ExpertState.initialized(balancer: balancer)) {
    on<ExpertEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        updateBalancer: (event) => _updateBalancer(event, emitter),
        updateTradeBalance: (event) => _updateTradeBalance(event, emitter),
      ),
    );
  }

  void _init(_InitExpertEvent event, Emitter<ExpertState> emitter) {
    emitter(ExpertState.initialized(account: event.userAccount, balancer: state.balancer));
  }

  Future<void> _updateBalancer(_UpdateBalancerExpertEvent event, Emitter<ExpertState> emitter) async {
    final balancer = StepsBalancer(
      stepRateList: event.stepsRateList ?? state.balancer.stepRateList,
      tradeBalance: state.account!.tradeBalance,
      stocksAmount: event.stocksAmount ?? state.balancer.stocksAmount,
    );
    emitter(ExpertState.inProgress(account: state.account, balancer: state.balancer));
    await getIt<HiveStorage>().setStepsBalancer(balancer);
    emitter(ExpertState.initialized(account: state.account, balancer: balancer));
  }

  Future<void> _updateTradeBalance(_UpdateTradeBalanceExpertEvent event, Emitter<ExpertState> emitter) async {
    final balancer = StepsBalancer(
      stepRateList: state.balancer.stepRateList,
      tradeBalance: event.newBalance,
      stocksAmount: state.balancer.stocksAmount,
    );
    emitter(ExpertState.inProgress(account: state.account, balancer: state.balancer));
    await getIt<HiveStorage>().setTradeBalance(event.newBalance);
    emitter(ExpertState.initialized(
      account: state.account!.copyWith(tradeBalance: event.newBalance),
      balancer: balancer,
    ));
  }
}
