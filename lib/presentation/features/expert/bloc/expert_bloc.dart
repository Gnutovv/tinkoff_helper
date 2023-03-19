import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/expert/user_account.dart';
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
    required UserAccount? account,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
    required UserAccount? account,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required UserAccount? account,
    required String message,
  }) = _ErrorExpertState;
}
