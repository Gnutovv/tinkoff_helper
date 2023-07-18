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
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker, StepsBalancer balancer) getPositionByTicker,
    required TResult Function(StepsBalancer balancer, List<String> existingFigis) getRecommendedPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult? Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPositionByTickerAddPositionEvent value) getPositionByTicker,
    required TResult Function(_GetRecommendedPositionsEvent value) getRecommendedPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult? Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
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
  $Res call({StepsBalancer balancer});

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
    Object? balancer = null,
  }) {
    return _then(_value.copyWith(
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
    required TResult Function(StepsBalancer balancer, List<String> existingFigis) getRecommendedPositions,
  }) {
    return getPositionByTicker(ticker, balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult? Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
  }) {
    return getPositionByTicker?.call(ticker, balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
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
    required TResult Function(_GetRecommendedPositionsEvent value) getRecommendedPositions,
  }) {
    return getPositionByTicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult? Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
  }) {
    return getPositionByTicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
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

  String get ticker;
  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_GetPositionByTickerAddPositionEventCopyWith<_$_GetPositionByTickerAddPositionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetRecommendedPositionsEventCopyWith<$Res> implements $AddPositionEventCopyWith<$Res> {
  factory _$$_GetRecommendedPositionsEventCopyWith(
          _$_GetRecommendedPositionsEvent value, $Res Function(_$_GetRecommendedPositionsEvent) then) =
      __$$_GetRecommendedPositionsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer, List<String> existingFigis});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_GetRecommendedPositionsEventCopyWithImpl<$Res>
    extends _$AddPositionEventCopyWithImpl<$Res, _$_GetRecommendedPositionsEvent>
    implements _$$_GetRecommendedPositionsEventCopyWith<$Res> {
  __$$_GetRecommendedPositionsEventCopyWithImpl(
      _$_GetRecommendedPositionsEvent _value, $Res Function(_$_GetRecommendedPositionsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
    Object? existingFigis = null,
  }) {
    return _then(_$_GetRecommendedPositionsEvent(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      existingFigis: null == existingFigis
          ? _value._existingFigis
          : existingFigis // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_GetRecommendedPositionsEvent extends _GetRecommendedPositionsEvent {
  const _$_GetRecommendedPositionsEvent({required this.balancer, required final List<String> existingFigis})
      : _existingFigis = existingFigis,
        super._();

  @override
  final StepsBalancer balancer;
  final List<String> _existingFigis;
  @override
  List<String> get existingFigis {
    if (_existingFigis is EqualUnmodifiableListView) return _existingFigis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingFigis);
  }

  @override
  String toString() {
    return 'AddPositionEvent.getRecommendedPositions(balancer: $balancer, existingFigis: $existingFigis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecommendedPositionsEvent &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._existingFigis, _existingFigis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_existingFigis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRecommendedPositionsEventCopyWith<_$_GetRecommendedPositionsEvent> get copyWith =>
      __$$_GetRecommendedPositionsEventCopyWithImpl<_$_GetRecommendedPositionsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker, StepsBalancer balancer) getPositionByTicker,
    required TResult Function(StepsBalancer balancer, List<String> existingFigis) getRecommendedPositions,
  }) {
    return getRecommendedPositions(balancer, existingFigis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult? Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
  }) {
    return getRecommendedPositions?.call(balancer, existingFigis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker, StepsBalancer balancer)? getPositionByTicker,
    TResult Function(StepsBalancer balancer, List<String> existingFigis)? getRecommendedPositions,
    required TResult orElse(),
  }) {
    if (getRecommendedPositions != null) {
      return getRecommendedPositions(balancer, existingFigis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPositionByTickerAddPositionEvent value) getPositionByTicker,
    required TResult Function(_GetRecommendedPositionsEvent value) getRecommendedPositions,
  }) {
    return getRecommendedPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult? Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
  }) {
    return getRecommendedPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPositionByTickerAddPositionEvent value)? getPositionByTicker,
    TResult Function(_GetRecommendedPositionsEvent value)? getRecommendedPositions,
    required TResult orElse(),
  }) {
    if (getRecommendedPositions != null) {
      return getRecommendedPositions(this);
    }
    return orElse();
  }
}

abstract class _GetRecommendedPositionsEvent extends AddPositionEvent {
  const factory _GetRecommendedPositionsEvent(
      {required final StepsBalancer balancer,
      required final List<String> existingFigis}) = _$_GetRecommendedPositionsEvent;
  const _GetRecommendedPositionsEvent._() : super._();

  @override
  StepsBalancer get balancer;
  List<String> get existingFigis;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecommendedPositionsEventCopyWith<_$_GetRecommendedPositionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPositionState {
  List<RecommendedPositions> get recommendedPositions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPositionStateCopyWith<AddPositionState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPositionStateCopyWith<$Res> {
  factory $AddPositionStateCopyWith(AddPositionState value, $Res Function(AddPositionState) then) =
      _$AddPositionStateCopyWithImpl<$Res, AddPositionState>;
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class _$AddPositionStateCopyWithImpl<$Res, $Val extends AddPositionState> implements $AddPositionStateCopyWith<$Res> {
  _$AddPositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_value.copyWith(
      recommendedPositions: null == recommendedPositions
          ? _value.recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotGotAddPositionStateCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$_NotGotAddPositionStateCopyWith(
          _$_NotGotAddPositionState value, $Res Function(_$_NotGotAddPositionState) then) =
      __$$_NotGotAddPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$_NotGotAddPositionStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_NotGotAddPositionState>
    implements _$$_NotGotAddPositionStateCopyWith<$Res> {
  __$$_NotGotAddPositionStateCopyWithImpl(
      _$_NotGotAddPositionState _value, $Res Function(_$_NotGotAddPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$_NotGotAddPositionState(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$_NotGotAddPositionState extends _NotGotAddPositionState {
  _$_NotGotAddPositionState({final List<RecommendedPositions> recommendedPositions = const <RecommendedPositions>[]})
      : _recommendedPositions = recommendedPositions,
        super._();

  final List<RecommendedPositions> _recommendedPositions;
  @override
  @JsonKey()
  List<RecommendedPositions> get recommendedPositions {
    if (_recommendedPositions is EqualUnmodifiableListView) return _recommendedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPositions);
  }

  @override
  String toString() {
    return 'AddPositionState.notGot(recommendedPositions: $recommendedPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotGotAddPositionState &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotGotAddPositionStateCopyWith<_$_NotGotAddPositionState> get copyWith =>
      __$$_NotGotAddPositionStateCopyWithImpl<_$_NotGotAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) {
    return notGot(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) {
    return notGot?.call(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) {
    if (notGot != null) {
      return notGot(recommendedPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
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
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
  factory _NotGotAddPositionState({final List<RecommendedPositions> recommendedPositions}) = _$_NotGotAddPositionState;
  _NotGotAddPositionState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$_NotGotAddPositionStateCopyWith<_$_NotGotAddPositionState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotRecommendedPositionsStateCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$_GotRecommendedPositionsStateCopyWith(
          _$_GotRecommendedPositionsState value, $Res Function(_$_GotRecommendedPositionsState) then) =
      __$$_GotRecommendedPositionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$_GotRecommendedPositionsStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_GotRecommendedPositionsState>
    implements _$$_GotRecommendedPositionsStateCopyWith<$Res> {
  __$$_GotRecommendedPositionsStateCopyWithImpl(
      _$_GotRecommendedPositionsState _value, $Res Function(_$_GotRecommendedPositionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$_GotRecommendedPositionsState(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$_GotRecommendedPositionsState extends _GotRecommendedPositionsState {
  _$_GotRecommendedPositionsState({required final List<RecommendedPositions> recommendedPositions})
      : _recommendedPositions = recommendedPositions,
        super._();

  final List<RecommendedPositions> _recommendedPositions;
  @override
  List<RecommendedPositions> get recommendedPositions {
    if (_recommendedPositions is EqualUnmodifiableListView) return _recommendedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPositions);
  }

  @override
  String toString() {
    return 'AddPositionState.gotRecommendedPositions(recommendedPositions: $recommendedPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotRecommendedPositionsState &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotRecommendedPositionsStateCopyWith<_$_GotRecommendedPositionsState> get copyWith =>
      __$$_GotRecommendedPositionsStateCopyWithImpl<_$_GotRecommendedPositionsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) {
    return gotRecommendedPositions(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) {
    return gotRecommendedPositions?.call(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) {
    if (gotRecommendedPositions != null) {
      return gotRecommendedPositions(recommendedPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
    required TResult Function(_GotAddPositionState value) got,
    required TResult Function(_InProgressAddPositionState value) inProgress,
    required TResult Function(_ErrorAddPositionState value) error,
  }) {
    return gotRecommendedPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotGotAddPositionState value)? notGot,
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
    TResult? Function(_GotAddPositionState value)? got,
    TResult? Function(_InProgressAddPositionState value)? inProgress,
    TResult? Function(_ErrorAddPositionState value)? error,
  }) {
    return gotRecommendedPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotGotAddPositionState value)? notGot,
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
    TResult Function(_GotAddPositionState value)? got,
    TResult Function(_InProgressAddPositionState value)? inProgress,
    TResult Function(_ErrorAddPositionState value)? error,
    required TResult orElse(),
  }) {
    if (gotRecommendedPositions != null) {
      return gotRecommendedPositions(this);
    }
    return orElse();
  }
}

abstract class _GotRecommendedPositionsState extends AddPositionState {
  factory _GotRecommendedPositionsState({required final List<RecommendedPositions> recommendedPositions}) =
      _$_GotRecommendedPositionsState;
  _GotRecommendedPositionsState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$_GotRecommendedPositionsStateCopyWith<_$_GotRecommendedPositionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotAddPositionStateCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$_GotAddPositionStateCopyWith(_$_GotAddPositionState value, $Res Function(_$_GotAddPositionState) then) =
      __$$_GotAddPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions});

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
    Object? recommendedPositions = null,
  }) {
    return _then(_$_GotAddPositionState(
      expertPosition: null == expertPosition
          ? _value.expertPosition
          : expertPosition // ignore: cast_nullable_to_non_nullable
              as ExpertPosition,
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
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
  _$_GotAddPositionState({required this.expertPosition, required final List<RecommendedPositions> recommendedPositions})
      : _recommendedPositions = recommendedPositions,
        super._();

  @override
  final ExpertPosition expertPosition;
  final List<RecommendedPositions> _recommendedPositions;
  @override
  List<RecommendedPositions> get recommendedPositions {
    if (_recommendedPositions is EqualUnmodifiableListView) return _recommendedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPositions);
  }

  @override
  String toString() {
    return 'AddPositionState.got(expertPosition: $expertPosition, recommendedPositions: $recommendedPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotAddPositionState &&
            (identical(other.expertPosition, expertPosition) || other.expertPosition == expertPosition) &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, expertPosition, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotAddPositionStateCopyWith<_$_GotAddPositionState> get copyWith =>
      __$$_GotAddPositionStateCopyWithImpl<_$_GotAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) {
    return got(expertPosition, recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) {
    return got?.call(expertPosition, recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) {
    if (got != null) {
      return got(expertPosition, recommendedPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
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
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
  factory _GotAddPositionState(
      {required final ExpertPosition expertPosition,
      required final List<RecommendedPositions> recommendedPositions}) = _$_GotAddPositionState;
  _GotAddPositionState._() : super._();

  ExpertPosition get expertPosition;
  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$_GotAddPositionStateCopyWith<_$_GotAddPositionState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressAddPositionStateCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$_InProgressAddPositionStateCopyWith(
          _$_InProgressAddPositionState value, $Res Function(_$_InProgressAddPositionState) then) =
      __$$_InProgressAddPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$_InProgressAddPositionStateCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$_InProgressAddPositionState>
    implements _$$_InProgressAddPositionStateCopyWith<$Res> {
  __$$_InProgressAddPositionStateCopyWithImpl(
      _$_InProgressAddPositionState _value, $Res Function(_$_InProgressAddPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$_InProgressAddPositionState(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$_InProgressAddPositionState extends _InProgressAddPositionState {
  _$_InProgressAddPositionState({required final List<RecommendedPositions> recommendedPositions})
      : _recommendedPositions = recommendedPositions,
        super._();

  final List<RecommendedPositions> _recommendedPositions;
  @override
  List<RecommendedPositions> get recommendedPositions {
    if (_recommendedPositions is EqualUnmodifiableListView) return _recommendedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPositions);
  }

  @override
  String toString() {
    return 'AddPositionState.inProgress(recommendedPositions: $recommendedPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressAddPositionState &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressAddPositionStateCopyWith<_$_InProgressAddPositionState> get copyWith =>
      __$$_InProgressAddPositionStateCopyWithImpl<_$_InProgressAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) {
    return inProgress(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) {
    return inProgress?.call(recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(recommendedPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
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
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
  factory _InProgressAddPositionState({required final List<RecommendedPositions> recommendedPositions}) =
      _$_InProgressAddPositionState;
  _InProgressAddPositionState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressAddPositionStateCopyWith<_$_InProgressAddPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorAddPositionStateCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$_ErrorAddPositionStateCopyWith(
          _$_ErrorAddPositionState value, $Res Function(_$_ErrorAddPositionState) then) =
      __$$_ErrorAddPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<RecommendedPositions> recommendedPositions});
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
    Object? recommendedPositions = null,
  }) {
    return _then(_$_ErrorAddPositionState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$_ErrorAddPositionState extends _ErrorAddPositionState {
  _$_ErrorAddPositionState({required this.message, required final List<RecommendedPositions> recommendedPositions})
      : _recommendedPositions = recommendedPositions,
        super._();

  @override
  final String message;
  final List<RecommendedPositions> _recommendedPositions;
  @override
  List<RecommendedPositions> get recommendedPositions {
    if (_recommendedPositions is EqualUnmodifiableListView) return _recommendedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPositions);
  }

  @override
  String toString() {
    return 'AddPositionState.error(message: $message, recommendedPositions: $recommendedPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAddPositionState &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorAddPositionStateCopyWith<_$_ErrorAddPositionState> get copyWith =>
      __$$_ErrorAddPositionStateCopyWithImpl<_$_ErrorAddPositionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecommendedPositions> recommendedPositions) notGot,
    required TResult Function(List<RecommendedPositions> recommendedPositions) gotRecommendedPositions,
    required TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions) got,
    required TResult Function(List<RecommendedPositions> recommendedPositions) inProgress,
    required TResult Function(String message, List<RecommendedPositions> recommendedPositions) error,
  }) {
    return error(message, recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult? Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult? Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult? Function(String message, List<RecommendedPositions> recommendedPositions)? error,
  }) {
    return error?.call(message, recommendedPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecommendedPositions> recommendedPositions)? notGot,
    TResult Function(List<RecommendedPositions> recommendedPositions)? gotRecommendedPositions,
    TResult Function(ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions)? got,
    TResult Function(List<RecommendedPositions> recommendedPositions)? inProgress,
    TResult Function(String message, List<RecommendedPositions> recommendedPositions)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, recommendedPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotGotAddPositionState value) notGot,
    required TResult Function(_GotRecommendedPositionsState value) gotRecommendedPositions,
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
    TResult? Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
    TResult Function(_GotRecommendedPositionsState value)? gotRecommendedPositions,
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
  factory _ErrorAddPositionState(
      {required final String message,
      required final List<RecommendedPositions> recommendedPositions}) = _$_ErrorAddPositionState;
  _ErrorAddPositionState._() : super._();

  String get message;
  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorAddPositionStateCopyWith<_$_ErrorAddPositionState> get copyWith => throw _privateConstructorUsedError;
}
