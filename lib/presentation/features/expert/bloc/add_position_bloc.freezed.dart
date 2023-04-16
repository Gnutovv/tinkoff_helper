// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_position_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPositionEvent {
  String get ticker => throw _privateConstructorUsedError;
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker, StepsBalancer balancer) getPositionByTicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPositionByTickerAddPositionEvent value) getPositionByTicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPositionEventCopyWith<AddPositionEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPositionEventCopyWith<$Res> {
  factory $AddPositionEventCopyWith(AddPositionEvent value, $Res Function(AddPositionEvent) then) =
      _$AddPositionEventCopyWithImpl<$Res, AddPositionEvent>;
  @useResult
  $Res call({String ticker, StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class _$AddPositionEventCopyWithImpl<$Res, $Val extends AddPositionEvent> implements $AddPositionEventCopyWith<$Res> {
  _$AddPositionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? balancer = null,
  }) {
    return _then(_value.copyWith(
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StepsBalancerCopyWith<$Res> get balancer {
    return $StepsBalancerCopyWith<$Res>(_value.balancer, (value) {
      return _then(_value.copyWith(balancer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetPositionByTickerAddPositionEventCopyWith<$Res> implements $AddPositionEventCopyWith<$Res> {
  factory _$$_GetPositionByTickerAddPositionEventCopyWith(
          _$_GetPositionByTickerAddPositionEvent value, $Res Function(_$_GetPositionByTickerAddPositionEvent) then) =
      __$$_GetPositionByTickerAddPositionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticker, StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_GetPositionByTickerAddPositionEventCopyWithImpl<$Res>
    extends _$AddPositionEventCopyWithImpl<$Res, _$_GetPositionByTickerAddPositionEvent>
    implements _$$_GetPositionByTickerAddPositionEventCopyWith<$Res> {
  __$$_GetPositionByTickerAddPositionEventCopyWithImpl(
      _$_GetPositionByTickerAddPositionEvent _value, $Res Function(_$_GetPositionByTickerAddPositionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? balancer = null,
  }) {
    return _then(_$_GetPositionByTickerAddPositionEvent(
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }
}

/// @nodoc

class _$_GetPositionByTickerAddPositionEvent extends _GetPositionByTickerAddPositionEvent {
  const _$_GetPositionByTickerAddPositionEvent({required this.ticker, required this.balancer}) : super._();

  @override
  final String ticker;
  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'AddPositionEvent.getPositionByTicker(ticker: $ticker, balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPositionByTickerAddPositionEvent &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticker, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPositionByTickerAddPositionEventCopyWith<_$_GetPositionByTickerAddPositionEvent> get copyWith =>
      __$$_GetPositionByTickerAddPositionEventCopyWithImpl<_$_GetPositionByTickerAddPositionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker, StepsBalancer balancer) getPositionByTicker,
  }) {
    return getPositionByTicker(ticker, balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
  }) {
    return getPositionByTicker?.call(ticker, balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    required TResult orElse(),
  }) {
    if (getPositionByTicker != null) {
      return getPositionByTicker(ticker, balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPositionByTickerAddPositionEvent value) getPositionByTicker,
  }) {
    return getPositionByTicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
  }) {
    return getPositionByTicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    required TResult orElse(),
  }) {
    if (getPositionByTicker != null) {
      return getPositionByTicker(this);
    }
    return orElse();
  }
}

abstract class _GetPositionByTickerAddPositionEvent extends AddPositionEvent {
  const factory _GetPositionByTickerAddPositionEvent(
      {required final String ticker, required final StepsBalancer balancer}) = _$_GetPositionByTickerAddPositionEvent;
  const _GetPositionByTickerAddPositionEvent._() : super._();

  @override
  String get ticker;
  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_GetPositionByTickerAddPositionEventCopyWith<_$_GetPositionByTickerAddPositionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPositionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGot,
    required TResult Function(ExpertPosition expertPosition) got,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notGot,
    TResult? Function(ExpertPosition expertPosition)? got,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGot,
    TResult Function(ExpertPosition expertPosition)? got,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPositionStateCopyWith<$Res> {
  factory $AddPositionStateCopyWith(AddPositionState value, $Res Function(AddPositionState) then) =
      _$AddPositionStateCopyWithImpl<$Res, AddPositionState>;
}

/// @nodoc
class _$AddPositionStateCopyWithImpl<$Res, $Val extends AddPositionState> implements $AddPositionStateCopyWith<$Res> {
  _$AddPositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotGotAddPositionStateCopyWith<$Res> {
  factory _$$_NotGotAddPositionStateCopyWith(
          _$_NotGotAddPositionState value, $Res Function(_$_NotGotAddPositionState) then) =
      __$$_NotGotAddPositionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotGotAddPositionStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_NotGotAddPositionState>
    implements _$$_NotGotAddPositionStateCopyWith<$Res> {
  __$$_NotGotAddPositionStateCopyWithImpl(
      _$_NotGotAddPositionState _value, $Res Function(_$_NotGotAddPositionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotGotAddPositionState extends _NotGotAddPositionState {
  _$_NotGotAddPositionState() : super._();

  @override
  String toString() {
    return 'AddPositionState.notGot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_NotGotAddPositionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGot,
    required TResult Function(ExpertPosition expertPosition) got,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return notGot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notGot,
    TResult? Function(ExpertPosition expertPosition)? got,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
  }) {
    return notGot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGot,
    TResult Function(ExpertPosition expertPosition)? got,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (notGot != null) {
      return notGot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) {
    return notGot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) {
    return notGot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) {
    if (notGot != null) {
      return notGot(this);
    }
    return orElse();
  }
}

abstract class _NotGotAddPositionState extends AddPositionState {
  factory _NotGotAddPositionState() = _$_NotGotAddPositionState;
  _NotGotAddPositionState._() : super._();
}

/// @nodoc
abstract class _$$_GotAddPositionStateCopyWith<$Res> {
  factory _$$_GotAddPositionStateCopyWith(_$_GotAddPositionState value, $Res Function(_$_GotAddPositionState) then) =
      __$$_GotAddPositionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpertPosition expertPosition});

  $ExpertPositionCopyWith<$Res> get expertPosition;
}

/// @nodoc
class __$$_GotAddPositionStateCopyWithImpl<$Res> extends _$AddPositionStateCopyWithImpl<$Res, _$_GotAddPositionState>
    implements _$$_GotAddPositionStateCopyWith<$Res> {
  __$$_GotAddPositionStateCopyWithImpl(_$_GotAddPositionState _value, $Res Function(_$_GotAddPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertPosition = null,
  }) {
    return _then(_$_GotAddPositionState(
      expertPosition: null == expertPosition
          ? _value.expertPosition
          : expertPosition // ignore: cast_nullable_to_non_nullable
              as ExpertPosition,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpertPositionCopyWith<$Res> get expertPosition {
    return $ExpertPositionCopyWith<$Res>(_value.expertPosition, (value) {
      return _then(_value.copyWith(expertPosition: value));
    });
  }
}

/// @nodoc

class _$_GotAddPositionState extends _GotAddPositionState {
  _$_GotAddPositionState({required this.expertPosition}) : super._();

  @override
  final ExpertPosition expertPosition;

  @override
  String toString() {
    return 'AddPositionState.got(expertPosition: $expertPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotAddPositionState &&
            (identical(other.expertPosition, expertPosition) || other.expertPosition == expertPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expertPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotAddPositionStateCopyWith<_$_GotAddPositionState> get copyWith =>
      __$$_GotAddPositionStateCopyWithImpl<_$_GotAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGot,
    required TResult Function(ExpertPosition expertPosition) got,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return got(expertPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notGot,
    TResult? Function(ExpertPosition expertPosition)? got,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
  }) {
    return got?.call(expertPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGot,
    TResult Function(ExpertPosition expertPosition)? got,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (got != null) {
      return got(expertPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) {
    return got(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) {
    return got?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) {
    if (got != null) {
      return got(this);
    }
    return orElse();
  }
}

abstract class _GotAddPositionState extends AddPositionState {
  factory _GotAddPositionState({required final ExpertPosition expertPosition}) = _$_GotAddPositionState;
  _GotAddPositionState._() : super._();

  ExpertPosition get expertPosition;
  @JsonKey(ignore: true)
  _$$_GotAddPositionStateCopyWith<_$_GotAddPositionState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressAddPositionStateCopyWith<$Res> {
  factory _$$_InProgressAddPositionStateCopyWith(
          _$_InProgressAddPositionState value, $Res Function(_$_InProgressAddPositionState) then) =
      __$$_InProgressAddPositionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressAddPositionStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_InProgressAddPositionState>
    implements _$$_InProgressAddPositionStateCopyWith<$Res> {
  __$$_InProgressAddPositionStateCopyWithImpl(
      _$_InProgressAddPositionState _value, $Res Function(_$_InProgressAddPositionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgressAddPositionState extends _InProgressAddPositionState {
  _$_InProgressAddPositionState() : super._();

  @override
  String toString() {
    return 'AddPositionState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_InProgressAddPositionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGot,
    required TResult Function(ExpertPosition expertPosition) got,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notGot,
    TResult? Function(ExpertPosition expertPosition)? got,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGot,
    TResult Function(ExpertPosition expertPosition)? got,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressAddPositionState extends AddPositionState {
  factory _InProgressAddPositionState() = _$_InProgressAddPositionState;
  _InProgressAddPositionState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorAddPositionStateCopyWith<$Res> {
  factory _$$_ErrorAddPositionStateCopyWith(
          _$_ErrorAddPositionState value, $Res Function(_$_ErrorAddPositionState) then) =
      __$$_ErrorAddPositionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorAddPositionStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_ErrorAddPositionState>
    implements _$$_ErrorAddPositionStateCopyWith<$Res> {
  __$$_ErrorAddPositionStateCopyWithImpl(_$_ErrorAddPositionState _value, $Res Function(_$_ErrorAddPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorAddPositionState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAddPositionState extends _ErrorAddPositionState {
  _$_ErrorAddPositionState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AddPositionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAddPositionState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorAddPositionStateCopyWith<_$_ErrorAddPositionState> get copyWith =>
      __$$_ErrorAddPositionStateCopyWithImpl<_$_ErrorAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGot,
    required TResult Function(ExpertPosition expertPosition) got,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notGot,
    TResult? Function(ExpertPosition expertPosition)? got,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGot,
    TResult Function(ExpertPosition expertPosition)? got,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAddPositionState extends AddPositionState {
  factory _ErrorAddPositionState({required final String message}) = _$_ErrorAddPositionState;
  _ErrorAddPositionState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorAddPositionStateCopyWith<_$_ErrorAddPositionState> get copyWith => throw _privateConstructorUsedError;
}
