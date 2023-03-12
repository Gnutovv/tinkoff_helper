import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';

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

  bool get hasError => maybeMap<bool>(
        orElse: () => false,
        error: (state) => true,
      );

  String? get errorMessage => maybeMap<String?>(
        orElse: () => null,
        error: (state) => state.message,
      );

  const SettingsState._();

  factory SettingsState.initialized({
    required String apiKey,
    @Default(ApiButtonStatuses.readyToCheck) ApiButtonStatuses checkStatus,
  }) = _InitializedSettingsState;

  factory SettingsState.inProgress({
    required String apiKey,
    @Default(ApiButtonStatuses.readyToCheck) ApiButtonStatuses checkStatus,
  }) = _InProgressSettingsState;

  factory SettingsState.error({
    required String message,
    required String apiKey,
    @Default(ApiButtonStatuses.failed) ApiButtonStatuses checkStatus,
  }) = _ErrorSettingsState;
}
