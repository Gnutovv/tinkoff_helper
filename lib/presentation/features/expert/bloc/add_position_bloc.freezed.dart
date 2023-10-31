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
abstract class _$$GetPositionByTickerAddPositionEventImplCopyWith<$Res> implements $AddPositionEventCopyWith<$Res> {
  factory _$$GetPositionByTickerAddPositionEventImplCopyWith(_$GetPositionByTickerAddPositionEventImpl value,
          $Res Function(_$GetPositionByTickerAddPositionEventImpl) then) =
      __$$GetPositionByTickerAddPositionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticker, StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$GetPositionByTickerAddPositionEventImplCopyWithImpl<$Res>
    extends _$AddPositionEventCopyWithImpl<$Res, _$GetPositionByTickerAddPositionEventImpl>
    implements _$$GetPositionByTickerAddPositionEventImplCopyWith<$Res> {
  __$$GetPositionByTickerAddPositionEventImplCopyWithImpl(
      _$GetPositionByTickerAddPositionEventImpl _value, $Res Function(_$GetPositionByTickerAddPositionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? balancer = null,
  }) {
    return _then(_$GetPositionByTickerAddPositionEventImpl(
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

class _$GetPositionByTickerAddPositionEventImpl extends _GetPositionByTickerAddPositionEvent {
  const _$GetPositionByTickerAddPositionEventImpl({required this.ticker, required this.balancer}) : super._();

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
            other is _$GetPositionByTickerAddPositionEventImpl &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticker, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPositionByTickerAddPositionEventImplCopyWith<_$GetPositionByTickerAddPositionEventImpl> get copyWith =>
      __$$GetPositionByTickerAddPositionEventImplCopyWithImpl<_$GetPositionByTickerAddPositionEventImpl>(
          this, _$identity);

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
      {required final String ticker,
      required final StepsBalancer balancer}) = _$GetPositionByTickerAddPositionEventImpl;
  const _GetPositionByTickerAddPositionEvent._() : super._();

  String get ticker;
  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$GetPositionByTickerAddPositionEventImplCopyWith<_$GetPositionByTickerAddPositionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRecommendedPositionsEventImplCopyWith<$Res> implements $AddPositionEventCopyWith<$Res> {
  factory _$$GetRecommendedPositionsEventImplCopyWith(
          _$GetRecommendedPositionsEventImpl value, $Res Function(_$GetRecommendedPositionsEventImpl) then) =
      __$$GetRecommendedPositionsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer, List<String> existingFigis});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$GetRecommendedPositionsEventImplCopyWithImpl<$Res>
    extends _$AddPositionEventCopyWithImpl<$Res, _$GetRecommendedPositionsEventImpl>
    implements _$$GetRecommendedPositionsEventImplCopyWith<$Res> {
  __$$GetRecommendedPositionsEventImplCopyWithImpl(
      _$GetRecommendedPositionsEventImpl _value, $Res Function(_$GetRecommendedPositionsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
    Object? existingFigis = null,
  }) {
    return _then(_$GetRecommendedPositionsEventImpl(
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

class _$GetRecommendedPositionsEventImpl extends _GetRecommendedPositionsEvent {
  const _$GetRecommendedPositionsEventImpl({required this.balancer, required final List<String> existingFigis})
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
            other is _$GetRecommendedPositionsEventImpl &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._existingFigis, _existingFigis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_existingFigis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecommendedPositionsEventImplCopyWith<_$GetRecommendedPositionsEventImpl> get copyWith =>
      __$$GetRecommendedPositionsEventImplCopyWithImpl<_$GetRecommendedPositionsEventImpl>(this, _$identity);

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
      required final List<String> existingFigis}) = _$GetRecommendedPositionsEventImpl;
  const _GetRecommendedPositionsEvent._() : super._();

  @override
  StepsBalancer get balancer;
  List<String> get existingFigis;
  @override
  @JsonKey(ignore: true)
  _$$GetRecommendedPositionsEventImplCopyWith<_$GetRecommendedPositionsEventImpl> get copyWith =>
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
abstract class _$$NotGotAddPositionStateImplCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$NotGotAddPositionStateImplCopyWith(
          _$NotGotAddPositionStateImpl value, $Res Function(_$NotGotAddPositionStateImpl) then) =
      __$$NotGotAddPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$NotGotAddPositionStateImplCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$NotGotAddPositionStateImpl>
    implements _$$NotGotAddPositionStateImplCopyWith<$Res> {
  __$$NotGotAddPositionStateImplCopyWithImpl(
      _$NotGotAddPositionStateImpl _value, $Res Function(_$NotGotAddPositionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$NotGotAddPositionStateImpl(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$NotGotAddPositionStateImpl extends _NotGotAddPositionState {
  _$NotGotAddPositionStateImpl({final List<RecommendedPositions> recommendedPositions = const <RecommendedPositions>[]})
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
            other is _$NotGotAddPositionStateImpl &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotGotAddPositionStateImplCopyWith<_$NotGotAddPositionStateImpl> get copyWith =>
      __$$NotGotAddPositionStateImplCopyWithImpl<_$NotGotAddPositionStateImpl>(this, _$identity);

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
  factory _NotGotAddPositionState({final List<RecommendedPositions> recommendedPositions}) =
      _$NotGotAddPositionStateImpl;
  _NotGotAddPositionState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$NotGotAddPositionStateImplCopyWith<_$NotGotAddPositionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotRecommendedPositionsStateImplCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$GotRecommendedPositionsStateImplCopyWith(
          _$GotRecommendedPositionsStateImpl value, $Res Function(_$GotRecommendedPositionsStateImpl) then) =
      __$$GotRecommendedPositionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$GotRecommendedPositionsStateImplCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$GotRecommendedPositionsStateImpl>
    implements _$$GotRecommendedPositionsStateImplCopyWith<$Res> {
  __$$GotRecommendedPositionsStateImplCopyWithImpl(
      _$GotRecommendedPositionsStateImpl _value, $Res Function(_$GotRecommendedPositionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$GotRecommendedPositionsStateImpl(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$GotRecommendedPositionsStateImpl extends _GotRecommendedPositionsState {
  _$GotRecommendedPositionsStateImpl({required final List<RecommendedPositions> recommendedPositions})
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
            other is _$GotRecommendedPositionsStateImpl &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotRecommendedPositionsStateImplCopyWith<_$GotRecommendedPositionsStateImpl> get copyWith =>
      __$$GotRecommendedPositionsStateImplCopyWithImpl<_$GotRecommendedPositionsStateImpl>(this, _$identity);

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
      _$GotRecommendedPositionsStateImpl;
  _GotRecommendedPositionsState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$GotRecommendedPositionsStateImplCopyWith<_$GotRecommendedPositionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotAddPositionStateImplCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$GotAddPositionStateImplCopyWith(
          _$GotAddPositionStateImpl value, $Res Function(_$GotAddPositionStateImpl) then) =
      __$$GotAddPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpertPosition expertPosition, List<RecommendedPositions> recommendedPositions});

  $ExpertPositionCopyWith<$Res> get expertPosition;
}

/// @nodoc
class __$$GotAddPositionStateImplCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$GotAddPositionStateImpl>
    implements _$$GotAddPositionStateImplCopyWith<$Res> {
  __$$GotAddPositionStateImplCopyWithImpl(
      _$GotAddPositionStateImpl _value, $Res Function(_$GotAddPositionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertPosition = null,
    Object? recommendedPositions = null,
  }) {
    return _then(_$GotAddPositionStateImpl(
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

class _$GotAddPositionStateImpl extends _GotAddPositionState {
  _$GotAddPositionStateImpl(
      {required this.expertPosition, required final List<RecommendedPositions> recommendedPositions})
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
            other is _$GotAddPositionStateImpl &&
            (identical(other.expertPosition, expertPosition) || other.expertPosition == expertPosition) &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, expertPosition, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotAddPositionStateImplCopyWith<_$GotAddPositionStateImpl> get copyWith =>
      __$$GotAddPositionStateImplCopyWithImpl<_$GotAddPositionStateImpl>(this, _$identity);

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
      required final List<RecommendedPositions> recommendedPositions}) = _$GotAddPositionStateImpl;
  _GotAddPositionState._() : super._();

  ExpertPosition get expertPosition;
  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$GotAddPositionStateImplCopyWith<_$GotAddPositionStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressAddPositionStateImplCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$InProgressAddPositionStateImplCopyWith(
          _$InProgressAddPositionStateImpl value, $Res Function(_$InProgressAddPositionStateImpl) then) =
      __$$InProgressAddPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$InProgressAddPositionStateImplCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$InProgressAddPositionStateImpl>
    implements _$$InProgressAddPositionStateImplCopyWith<$Res> {
  __$$InProgressAddPositionStateImplCopyWithImpl(
      _$InProgressAddPositionStateImpl _value, $Res Function(_$InProgressAddPositionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedPositions = null,
  }) {
    return _then(_$InProgressAddPositionStateImpl(
      recommendedPositions: null == recommendedPositions
          ? _value._recommendedPositions
          : recommendedPositions // ignore: cast_nullable_to_non_nullable
              as List<RecommendedPositions>,
    ));
  }
}

/// @nodoc

class _$InProgressAddPositionStateImpl extends _InProgressAddPositionState {
  _$InProgressAddPositionStateImpl({required final List<RecommendedPositions> recommendedPositions})
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
            other is _$InProgressAddPositionStateImpl &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressAddPositionStateImplCopyWith<_$InProgressAddPositionStateImpl> get copyWith =>
      __$$InProgressAddPositionStateImplCopyWithImpl<_$InProgressAddPositionStateImpl>(this, _$identity);

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
      _$InProgressAddPositionStateImpl;
  _InProgressAddPositionState._() : super._();

  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$InProgressAddPositionStateImplCopyWith<_$InProgressAddPositionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAddPositionStateImplCopyWith<$Res> implements $AddPositionStateCopyWith<$Res> {
  factory _$$ErrorAddPositionStateImplCopyWith(
          _$ErrorAddPositionStateImpl value, $Res Function(_$ErrorAddPositionStateImpl) then) =
      __$$ErrorAddPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<RecommendedPositions> recommendedPositions});
}

/// @nodoc
class __$$ErrorAddPositionStateImplCopyWithImpl<$Res>
    extends _$AddPositionStateCopyWithImpl<$Res, _$ErrorAddPositionStateImpl>
    implements _$$ErrorAddPositionStateImplCopyWith<$Res> {
  __$$ErrorAddPositionStateImplCopyWithImpl(
      _$ErrorAddPositionStateImpl _value, $Res Function(_$ErrorAddPositionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? recommendedPositions = null,
  }) {
    return _then(_$ErrorAddPositionStateImpl(
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

class _$ErrorAddPositionStateImpl extends _ErrorAddPositionState {
  _$ErrorAddPositionStateImpl({required this.message, required final List<RecommendedPositions> recommendedPositions})
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
            other is _$ErrorAddPositionStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._recommendedPositions, _recommendedPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(_recommendedPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAddPositionStateImplCopyWith<_$ErrorAddPositionStateImpl> get copyWith =>
      __$$ErrorAddPositionStateImplCopyWithImpl<_$ErrorAddPositionStateImpl>(this, _$identity);

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
      required final List<RecommendedPositions> recommendedPositions}) = _$ErrorAddPositionStateImpl;
  _ErrorAddPositionState._() : super._();

  String get message;
  @override
  List<RecommendedPositions> get recommendedPositions;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAddPositionStateImplCopyWith<_$ErrorAddPositionStateImpl> get copyWith => throw _privateConstructorUsedError;
}
