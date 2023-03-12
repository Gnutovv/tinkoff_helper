import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.updateBalance() = _UpdateBalanceExpertEvent;
  const factory ExpertEvent.calculateParams({
    required List<int> stepRateList,
    required double tradeBalance,
    required int stocksAmount,
  }) = _CalculateParamsExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  String? get errorMessage => mapOrNull<String?>(
        error: (state) => state.message,
      );

  const ExpertState._();

  factory ExpertState.initialized({
    required StepsBalancer balancer,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
  }) = _InProgressExpertState;

  factory ExpertState.calculated({
    required StepsBalancer balancer,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required String message,
  }) = _ErrorExpertState;
}
