import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init({
    required StepsBalancer balancer,
    required List<String> expertPositions,
  }) = _InitExpertEvent;

  const factory ExpertEvent.calculateNewBalancer({required StepsBalancer balancer}) = _CalculateNewBalancerExpertEvent;

  const factory ExpertEvent.update({required List<String> expertPositions}) = _UpdateExpertEvent;

  const factory ExpertEvent.doRecommend() = _DoRecommendExpertEvent;

  const factory ExpertEvent.doAllRecommends() = _DoAllRecommendsExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  const ExpertState._();

  factory ExpertState.initialized({
    required StepsBalancer balancer,
    required List<String> positions,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
    required List<String> positions,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required List<String> positions,
    required String message,
  }) = _ErrorExpertState;
}

class ExpertBloc extends Bloc<ExpertEvent, ExpertState> {
  ExpertBloc({
    required StepsBalancer balancer,
    required List<String> positions,
  }) : super(ExpertState.initialized(balancer: balancer, positions: positions)) {
    on<ExpertEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        calculateNewBalancer: (event) => _calculateNewBalancer(event, emitter),
        update: (event) => _update(event, emitter),
        doRecommend: (event) => null,
        doAllRecommends: (event) => null,
      ),
    );
  }

  Future<void> _init(_InitExpertEvent event, Emitter<ExpertState> emitter) async {}

  Future<void> _calculateNewBalancer(_CalculateNewBalancerExpertEvent event, Emitter<ExpertState> emitter) async {}

  Future<void> _update(_UpdateExpertEvent event, Emitter<ExpertState> emitter) async {}

  Future<void> _getShares() async {}

  Future<void> _getPortfolioPositions() async {}

  Future<void> _getSharesInfo(List<String> positions) async {}
}
