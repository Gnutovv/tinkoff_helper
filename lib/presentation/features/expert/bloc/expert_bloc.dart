import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/expert/user_account.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init({required UserAccount userAccount}) = _InitExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  String? get errorMessage => mapOrNull<String?>(
        error: (state) => state.message,
      );

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
      (event, emitter) => event.map(init: (event) => _init(event, emitter)),
    );
  }

  void _init(_InitExpertEvent event, Emitter<ExpertState> emitter) {
    emitter(ExpertState.initialized(account: event.userAccount, balancer: state.balancer));
  }
}
