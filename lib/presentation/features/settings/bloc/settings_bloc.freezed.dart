// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  String get apiKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey) checkApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey)? checkApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey)? checkApiKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckApiKeySettingsEvent value) checkApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckApiKeySettingsEvent value)? checkApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckApiKeySettingsEvent value)? checkApiKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent> implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckApiKeySettingsEventCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$$_CheckApiKeySettingsEventCopyWith(
          _$_CheckApiKeySettingsEvent value, $Res Function(_$_CheckApiKeySettingsEvent) then) =
      __$$_CheckApiKeySettingsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$_CheckApiKeySettingsEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_CheckApiKeySettingsEvent>
    implements _$$_CheckApiKeySettingsEventCopyWith<$Res> {
  __$$_CheckApiKeySettingsEventCopyWithImpl(
      _$_CheckApiKeySettingsEvent _value, $Res Function(_$_CheckApiKeySettingsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$_CheckApiKeySettingsEvent(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckApiKeySettingsEvent extends _CheckApiKeySettingsEvent {
  const _$_CheckApiKeySettingsEvent({required this.apiKey}) : super._();

  @override
  final String apiKey;

  @override
  String toString() {
    return 'SettingsEvent.checkApiKey(apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckApiKeySettingsEvent &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckApiKeySettingsEventCopyWith<_$_CheckApiKeySettingsEvent> get copyWith =>
      __$$_CheckApiKeySettingsEventCopyWithImpl<_$_CheckApiKeySettingsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey) checkApiKey,
  }) {
    return checkApiKey(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey)? checkApiKey,
  }) {
    return checkApiKey?.call(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey)? checkApiKey,
    required TResult orElse(),
  }) {
    if (checkApiKey != null) {
      return checkApiKey(apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckApiKeySettingsEvent value) checkApiKey,
  }) {
    return checkApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckApiKeySettingsEvent value)? checkApiKey,
  }) {
    return checkApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckApiKeySettingsEvent value)? checkApiKey,
    required TResult orElse(),
  }) {
    if (checkApiKey != null) {
      return checkApiKey(this);
    }
    return orElse();
  }
}

abstract class _CheckApiKeySettingsEvent extends SettingsEvent {
  const factory _CheckApiKeySettingsEvent({required final String apiKey}) = _$_CheckApiKeySettingsEvent;
  const _CheckApiKeySettingsEvent._() : super._();

  @override
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$_CheckApiKeySettingsEventCopyWith<_$_CheckApiKeySettingsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  String get apiKey => throw _privateConstructorUsedError;
  ApiButtonStatuses get checkStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) initialized,
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) inProgress,
    required TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult? Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedSettingsState value) initialized,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_ErrorSettingsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedSettingsState value)? initialized,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_ErrorSettingsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedSettingsState value)? initialized,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({String apiKey, ApiButtonStatuses checkStatus});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState> implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? checkStatus = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      checkStatus: null == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as ApiButtonStatuses,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitializedSettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$_InitializedSettingsStateCopyWith(
          _$_InitializedSettingsState value, $Res Function(_$_InitializedSettingsState) then) =
      __$$_InitializedSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, ApiButtonStatuses checkStatus});
}

/// @nodoc
class __$$_InitializedSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_InitializedSettingsState>
    implements _$$_InitializedSettingsStateCopyWith<$Res> {
  __$$_InitializedSettingsStateCopyWithImpl(
      _$_InitializedSettingsState _value, $Res Function(_$_InitializedSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? checkStatus = null,
  }) {
    return _then(_$_InitializedSettingsState(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      checkStatus: null == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as ApiButtonStatuses,
    ));
  }
}

/// @nodoc

class _$_InitializedSettingsState extends _InitializedSettingsState {
  _$_InitializedSettingsState({required this.apiKey, this.checkStatus = ApiButtonStatuses.readyToCheck}) : super._();

  @override
  final String apiKey;
  @override
  @JsonKey()
  final ApiButtonStatuses checkStatus;

  @override
  String toString() {
    return 'SettingsState.initialized(apiKey: $apiKey, checkStatus: $checkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedSettingsState &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.checkStatus, checkStatus) || other.checkStatus == checkStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey, checkStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedSettingsStateCopyWith<_$_InitializedSettingsState> get copyWith =>
      __$$_InitializedSettingsStateCopyWithImpl<_$_InitializedSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) initialized,
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) inProgress,
    required TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus) error,
  }) {
    return initialized(apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult? Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
  }) {
    return initialized?.call(apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(apiKey, checkStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedSettingsState value) initialized,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedSettingsState value)? initialized,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedSettingsState value)? initialized,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedSettingsState extends SettingsState {
  factory _InitializedSettingsState({required final String apiKey, final ApiButtonStatuses checkStatus}) =
      _$_InitializedSettingsState;
  _InitializedSettingsState._() : super._();

  @override
  String get apiKey;
  @override
  ApiButtonStatuses get checkStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedSettingsStateCopyWith<_$_InitializedSettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressSettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$_InProgressSettingsStateCopyWith(
          _$_InProgressSettingsState value, $Res Function(_$_InProgressSettingsState) then) =
      __$$_InProgressSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, ApiButtonStatuses checkStatus});
}

/// @nodoc
class __$$_InProgressSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_InProgressSettingsState>
    implements _$$_InProgressSettingsStateCopyWith<$Res> {
  __$$_InProgressSettingsStateCopyWithImpl(
      _$_InProgressSettingsState _value, $Res Function(_$_InProgressSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? checkStatus = null,
  }) {
    return _then(_$_InProgressSettingsState(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      checkStatus: null == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as ApiButtonStatuses,
    ));
  }
}

/// @nodoc

class _$_InProgressSettingsState extends _InProgressSettingsState {
  _$_InProgressSettingsState({required this.apiKey, this.checkStatus = ApiButtonStatuses.readyToCheck}) : super._();

  @override
  final String apiKey;
  @override
  @JsonKey()
  final ApiButtonStatuses checkStatus;

  @override
  String toString() {
    return 'SettingsState.inProgress(apiKey: $apiKey, checkStatus: $checkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressSettingsState &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.checkStatus, checkStatus) || other.checkStatus == checkStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey, checkStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressSettingsStateCopyWith<_$_InProgressSettingsState> get copyWith =>
      __$$_InProgressSettingsStateCopyWithImpl<_$_InProgressSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) initialized,
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) inProgress,
    required TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus) error,
  }) {
    return inProgress(apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult? Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
  }) {
    return inProgress?.call(apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(apiKey, checkStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedSettingsState value) initialized,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedSettingsState value)? initialized,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedSettingsState value)? initialized,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressSettingsState extends SettingsState {
  factory _InProgressSettingsState({required final String apiKey, final ApiButtonStatuses checkStatus}) =
      _$_InProgressSettingsState;
  _InProgressSettingsState._() : super._();

  @override
  String get apiKey;
  @override
  ApiButtonStatuses get checkStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressSettingsStateCopyWith<_$_InProgressSettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorSettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$_ErrorSettingsStateCopyWith(_$_ErrorSettingsState value, $Res Function(_$_ErrorSettingsState) then) =
      __$$_ErrorSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String apiKey, ApiButtonStatuses checkStatus});
}

/// @nodoc
class __$$_ErrorSettingsStateCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res, _$_ErrorSettingsState>
    implements _$$_ErrorSettingsStateCopyWith<$Res> {
  __$$_ErrorSettingsStateCopyWithImpl(_$_ErrorSettingsState _value, $Res Function(_$_ErrorSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? apiKey = null,
    Object? checkStatus = null,
  }) {
    return _then(_$_ErrorSettingsState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      checkStatus: null == checkStatus
          ? _value.checkStatus
          : checkStatus // ignore: cast_nullable_to_non_nullable
              as ApiButtonStatuses,
    ));
  }
}

/// @nodoc

class _$_ErrorSettingsState extends _ErrorSettingsState {
  _$_ErrorSettingsState({required this.message, required this.apiKey, this.checkStatus = ApiButtonStatuses.failed})
      : super._();

  @override
  final String message;
  @override
  final String apiKey;
  @override
  @JsonKey()
  final ApiButtonStatuses checkStatus;

  @override
  String toString() {
    return 'SettingsState.error(message: $message, apiKey: $apiKey, checkStatus: $checkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSettingsState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.checkStatus, checkStatus) || other.checkStatus == checkStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, apiKey, checkStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSettingsStateCopyWith<_$_ErrorSettingsState> get copyWith =>
      __$$_ErrorSettingsStateCopyWithImpl<_$_ErrorSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) initialized,
    required TResult Function(String apiKey, ApiButtonStatuses checkStatus) inProgress,
    required TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus) error,
  }) {
    return error(message, apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult? Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult? Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
  }) {
    return error?.call(message, apiKey, checkStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? initialized,
    TResult Function(String apiKey, ApiButtonStatuses checkStatus)? inProgress,
    TResult Function(String message, String apiKey, ApiButtonStatuses checkStatus)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, apiKey, checkStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedSettingsState value) initialized,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_ErrorSettingsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedSettingsState value)? initialized,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_ErrorSettingsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedSettingsState value)? initialized,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_ErrorSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSettingsState extends SettingsState {
  factory _ErrorSettingsState(
      {required final String message,
      required final String apiKey,
      final ApiButtonStatuses checkStatus}) = _$_ErrorSettingsState;
  _ErrorSettingsState._() : super._();

  String get message;
  @override
  String get apiKey;
  @override
  ApiButtonStatuses get checkStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorSettingsStateCopyWith<_$_ErrorSettingsState> get copyWith => throw _privateConstructorUsedError;
}
