// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpertEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertEventCopyWith<$Res> {
  factory $ExpertEventCopyWith(ExpertEvent value, $Res Function(ExpertEvent) then) =
      _$ExpertEventCopyWithImpl<$Res, ExpertEvent>;
}

/// @nodoc
class _$ExpertEventCopyWithImpl<$Res, $Val extends ExpertEvent> implements $ExpertEventCopyWith<$Res> {
  _$ExpertEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitExpertEventCopyWith<$Res> {
  factory _$$_InitExpertEventCopyWith(_$_InitExpertEvent value, $Res Function(_$_InitExpertEvent) then) =
      __$$_InitExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InitExpertEventCopyWithImpl<$Res> extends _$ExpertEventCopyWithImpl<$Res, _$_InitExpertEvent>
    implements _$$_InitExpertEventCopyWith<$Res> {
  __$$_InitExpertEventCopyWithImpl(_$_InitExpertEvent _value, $Res Function(_$_InitExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InitExpertEvent(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StepsBalancerCopyWith<$Res> get balancer {
    return $StepsBalancerCopyWith<$Res>(_value.balancer, (value) {
      return _then(_value.copyWith(balancer: value));
    });
  }
}

/// @nodoc

class _$_InitExpertEvent extends _InitExpertEvent {
  const _$_InitExpertEvent({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertEvent.init(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitExpertEvent &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith =>
      __$$_InitExpertEventCopyWithImpl<_$_InitExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) {
    return init(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) {
    return init?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitExpertEvent extends ExpertEvent {
  const factory _InitExpertEvent({required final StepsBalancer balancer}) = _$_InitExpertEvent;
  const _InitExpertEvent._() : super._();

  StepsBalancer get balancer;
  @JsonKey(ignore: true)
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBalancerExpertEventCopyWith<$Res> {
  factory _$$_UpdateBalancerExpertEventCopyWith(
          _$_UpdateBalancerExpertEvent value, $Res Function(_$_UpdateBalancerExpertEvent) then) =
      __$$_UpdateBalancerExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int>? stepsRateList, int? stocksAmount, double? balance});
}

/// @nodoc
class __$$_UpdateBalancerExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_UpdateBalancerExpertEvent>
    implements _$$_UpdateBalancerExpertEventCopyWith<$Res> {
  __$$_UpdateBalancerExpertEventCopyWithImpl(
      _$_UpdateBalancerExpertEvent _value, $Res Function(_$_UpdateBalancerExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsRateList = freezed,
    Object? stocksAmount = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_UpdateBalancerExpertEvent(
      stepsRateList: freezed == stepsRateList
          ? _value._stepsRateList
          : stepsRateList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      stocksAmount: freezed == stocksAmount
          ? _value.stocksAmount
          : stocksAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_UpdateBalancerExpertEvent extends _UpdateBalancerExpertEvent {
  const _$_UpdateBalancerExpertEvent({final List<int>? stepsRateList, this.stocksAmount, this.balance})
      : _stepsRateList = stepsRateList,
        super._();

  final List<int>? _stepsRateList;
  @override
  List<int>? get stepsRateList {
    final value = _stepsRateList;
    if (value == null) return null;
    if (_stepsRateList is EqualUnmodifiableListView) return _stepsRateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? stocksAmount;
  @override
  final double? balance;

  @override
  String toString() {
    return 'ExpertEvent.updateBalancer(stepsRateList: $stepsRateList, stocksAmount: $stocksAmount, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBalancerExpertEvent &&
            const DeepCollectionEquality().equals(other._stepsRateList, _stepsRateList) &&
            (identical(other.stocksAmount, stocksAmount) || other.stocksAmount == stocksAmount) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stepsRateList), stocksAmount, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBalancerExpertEventCopyWith<_$_UpdateBalancerExpertEvent> get copyWith =>
      __$$_UpdateBalancerExpertEventCopyWithImpl<_$_UpdateBalancerExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) {
    return updateBalancer(stepsRateList, stocksAmount, balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) {
    return updateBalancer?.call(stepsRateList, stocksAmount, balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(stepsRateList, stocksAmount, balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
  }) {
    return updateBalancer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
  }) {
    return updateBalancer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(this);
    }
    return orElse();
  }
}

abstract class _UpdateBalancerExpertEvent extends ExpertEvent {
  const factory _UpdateBalancerExpertEvent(
      {final List<int>? stepsRateList, final int? stocksAmount, final double? balance}) = _$_UpdateBalancerExpertEvent;
  const _UpdateBalancerExpertEvent._() : super._();

  List<int>? get stepsRateList;
  int? get stocksAmount;
  double? get balance;
  @JsonKey(ignore: true)
  _$$_UpdateBalancerExpertEventCopyWith<_$_UpdateBalancerExpertEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpertState {
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertState value) initialized,
    required TResult Function(_InProgressExpertState value) inProgress,
    required TResult Function(_ErrorExpertState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertState value)? initialized,
    TResult? Function(_InProgressExpertState value)? inProgress,
    TResult? Function(_ErrorExpertState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertState value)? initialized,
    TResult Function(_InProgressExpertState value)? inProgress,
    TResult Function(_ErrorExpertState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpertStateCopyWith<ExpertState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertStateCopyWith<$Res> {
  factory $ExpertStateCopyWith(ExpertState value, $Res Function(ExpertState) then) =
      _$ExpertStateCopyWithImpl<$Res, ExpertState>;
  @useResult
  $Res call({StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class _$ExpertStateCopyWithImpl<$Res, $Val extends ExpertState> implements $ExpertStateCopyWith<$Res> {
  _$ExpertStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_InitializedExpertStateCopyWith<$Res> implements $ExpertStateCopyWith<$Res> {
  factory _$$_InitializedExpertStateCopyWith(
          _$_InitializedExpertState value, $Res Function(_$_InitializedExpertState) then) =
      __$$_InitializedExpertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InitializedExpertStateCopyWithImpl<$Res> extends _$ExpertStateCopyWithImpl<$Res, _$_InitializedExpertState>
    implements _$$_InitializedExpertStateCopyWith<$Res> {
  __$$_InitializedExpertStateCopyWithImpl(
      _$_InitializedExpertState _value, $Res Function(_$_InitializedExpertState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InitializedExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }
}

/// @nodoc

class _$_InitializedExpertState extends _InitializedExpertState {
  _$_InitializedExpertState({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertState.initialized(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedExpertStateCopyWith<_$_InitializedExpertState> get copyWith =>
      __$$_InitializedExpertStateCopyWithImpl<_$_InitializedExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return initialized(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return initialized?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertState value) initialized,
    required TResult Function(_InProgressExpertState value) inProgress,
    required TResult Function(_ErrorExpertState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertState value)? initialized,
    TResult? Function(_InProgressExpertState value)? inProgress,
    TResult? Function(_ErrorExpertState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertState value)? initialized,
    TResult Function(_InProgressExpertState value)? inProgress,
    TResult Function(_ErrorExpertState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedExpertState extends ExpertState {
  factory _InitializedExpertState({required final StepsBalancer balancer}) = _$_InitializedExpertState;
  _InitializedExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedExpertStateCopyWith<_$_InitializedExpertState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressExpertStateCopyWith<$Res> implements $ExpertStateCopyWith<$Res> {
  factory _$$_InProgressExpertStateCopyWith(
          _$_InProgressExpertState value, $Res Function(_$_InProgressExpertState) then) =
      __$$_InProgressExpertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InProgressExpertStateCopyWithImpl<$Res> extends _$ExpertStateCopyWithImpl<$Res, _$_InProgressExpertState>
    implements _$$_InProgressExpertStateCopyWith<$Res> {
  __$$_InProgressExpertStateCopyWithImpl(_$_InProgressExpertState _value, $Res Function(_$_InProgressExpertState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InProgressExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }
}

/// @nodoc

class _$_InProgressExpertState extends _InProgressExpertState {
  _$_InProgressExpertState({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertState.inProgress(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressExpertStateCopyWith<_$_InProgressExpertState> get copyWith =>
      __$$_InProgressExpertStateCopyWithImpl<_$_InProgressExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return inProgress(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return inProgress?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertState value) initialized,
    required TResult Function(_InProgressExpertState value) inProgress,
    required TResult Function(_ErrorExpertState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertState value)? initialized,
    TResult? Function(_InProgressExpertState value)? inProgress,
    TResult? Function(_ErrorExpertState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertState value)? initialized,
    TResult Function(_InProgressExpertState value)? inProgress,
    TResult Function(_ErrorExpertState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressExpertState extends ExpertState {
  factory _InProgressExpertState({required final StepsBalancer balancer}) = _$_InProgressExpertState;
  _InProgressExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressExpertStateCopyWith<_$_InProgressExpertState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorExpertStateCopyWith<$Res> implements $ExpertStateCopyWith<$Res> {
  factory _$$_ErrorExpertStateCopyWith(_$_ErrorExpertState value, $Res Function(_$_ErrorExpertState) then) =
      __$$_ErrorExpertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer, String message});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_ErrorExpertStateCopyWithImpl<$Res> extends _$ExpertStateCopyWithImpl<$Res, _$_ErrorExpertState>
    implements _$$_ErrorExpertStateCopyWith<$Res> {
  __$$_ErrorExpertStateCopyWithImpl(_$_ErrorExpertState _value, $Res Function(_$_ErrorExpertState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
    Object? message = null,
  }) {
    return _then(_$_ErrorExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorExpertState extends _ErrorExpertState {
  _$_ErrorExpertState({required this.balancer, required this.message}) : super._();

  @override
  final StepsBalancer balancer;
  @override
  final String message;

  @override
  String toString() {
    return 'ExpertState.error(balancer: $balancer, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith =>
      __$$_ErrorExpertStateCopyWithImpl<_$_ErrorExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return error(balancer, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return error?.call(balancer, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(balancer, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertState value) initialized,
    required TResult Function(_InProgressExpertState value) inProgress,
    required TResult Function(_ErrorExpertState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertState value)? initialized,
    TResult? Function(_InProgressExpertState value)? inProgress,
    TResult? Function(_ErrorExpertState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertState value)? initialized,
    TResult Function(_InProgressExpertState value)? inProgress,
    TResult Function(_ErrorExpertState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorExpertState extends ExpertState {
  factory _ErrorExpertState({required final StepsBalancer balancer, required final String message}) =
      _$_ErrorExpertState;
  _ErrorExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith => throw _privateConstructorUsedError;
}
