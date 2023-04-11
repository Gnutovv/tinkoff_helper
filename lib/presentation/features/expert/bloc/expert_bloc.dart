import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init() = _InitExpertEvent;

  const factory ExpertEvent.updateBalancer({required StepsBalancer balancer}) = _UpdateBalancerExpertEvent;

  const factory ExpertEvent.updateExpertPositions() = _UpdateExpertPositionsExpertEvent;

  const factory ExpertEvent.addExpertPositions(ExpertPosition expertPosition) = _AddExpertPositionsExpertEvent;

  const factory ExpertEvent.doRecommend(ExpertPosition expertPosition) = _DoRecommendExpertEvent;

  const factory ExpertEvent.doAllRecommends() = _DoAllRecommendsExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  const ExpertState._();

  factory ExpertState.notInitialized({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required List<String> initPositions,
  }) = _NotInitializedExpertState;

  factory ExpertState.initialized({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required String message,
  }) = _ErrorExpertState;

  List<String>? get initPositions => mapOrNull(notInitialized: (state) => state.initPositions);
}

class ExpertBloc extends Bloc<ExpertEvent, ExpertState> {
  ExpertBloc({
    required StepsBalancer balancer,
    required List<String> initPositions,
  }) : super(ExpertState.notInitialized(balancer: balancer, initPositions: initPositions, expertPositions: [])) {
    on<ExpertEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        updateBalancer: (event) => _updateBalancer(event, emitter),
        updateExpertPositions: (event) => _updateExpertPositions(event, emitter),
        doRecommend: (event) => null,
        doAllRecommends: (event) => null,
        addExpertPositions: (event) => _addExpertPosition(event, emitter),
      ),
    );
  }

  final _tinkoffApiService = getIt<TinkoffApiService>();

  Future<void> _init(_InitExpertEvent event, Emitter<ExpertState> emitter) async {
    List<String> initPositions = state.initPositions!;
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    try {
      final updatedExpertPositions = await _calculateExpertPositions(initPositions);
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: updatedExpertPositions,
      ));
    } catch (error) {
      emitter(ExpertState.error(
        message: error.toString(),
        balancer: state.balancer,
        expertPositions: state.expertPositions,
      ));
      emitter(ExpertState.notInitialized(
        expertPositions: state.expertPositions,
        balancer: state.balancer,
        initPositions: initPositions,
      ));
    }
  }

  Future<void> _addExpertPosition(_AddExpertPositionsExpertEvent event, Emitter<ExpertState> emitter) async {
    print('!!!! START ADD POSITION');
    final positions = [...state.expertPositions, event.expertPosition];
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: positions));
    positions.sort((a, b) => a!.instrument.ticker.compareTo(b!.instrument.name));
    print(state.expertPositions);
    emitter(ExpertState.initialized(balancer: state.balancer, expertPositions: state.expertPositions));
  }

  Future<void> _updateBalancer(_UpdateBalancerExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.initialized(balancer: event.balancer, expertPositions: state.expertPositions));
  }

  Future<void> _updateExpertPositions(_UpdateExpertPositionsExpertEvent event, Emitter<ExpertState> emitter) async {}

  Future<List<ExpertPosition>> _calculateExpertPositions(List<String> positions) async {
    return [];
  }
}
