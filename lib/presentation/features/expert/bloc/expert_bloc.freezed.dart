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
    required TResult Function() updateBalance,
    required TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount) calculateParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateBalance,
    TResult? Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateBalance,
    TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBalanceExpertEvent value) updateBalance,
    required TResult Function(_CalculateParamsExpertEvent value) calculateParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult? Function(_CalculateParamsExpertEvent value)? calculateParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult Function(_CalculateParamsExpertEvent value)? calculateParams,
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
abstract class _$$_UpdateBalanceExpertEventCopyWith<$Res> {
  factory _$$_UpdateBalanceExpertEventCopyWith(
          _$_UpdateBalanceExpertEvent value, $Res Function(_$_UpdateBalanceExpertEvent) then) =
      __$$_UpdateBalanceExpertEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateBalanceExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_UpdateBalanceExpertEvent>
    implements _$$_UpdateBalanceExpertEventCopyWith<$Res> {
  __$$_UpdateBalanceExpertEventCopyWithImpl(
      _$_UpdateBalanceExpertEvent _value, $Res Function(_$_UpdateBalanceExpertEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateBalanceExpertEvent extends _UpdateBalanceExpertEvent {
  const _$_UpdateBalanceExpertEvent() : super._();

  @override
  String toString() {
    return 'ExpertEvent.updateBalance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UpdateBalanceExpertEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateBalance,
    required TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount) calculateParams,
  }) {
    return updateBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateBalance,
    TResult? Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
  }) {
    return updateBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateBalance,
    TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
    required TResult orElse(),
  }) {
    if (updateBalance != null) {
      return updateBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBalanceExpertEvent value) updateBalance,
    required TResult Function(_CalculateParamsExpertEvent value) calculateParams,
  }) {
    return updateBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult? Function(_CalculateParamsExpertEvent value)? calculateParams,
  }) {
    return updateBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult Function(_CalculateParamsExpertEvent value)? calculateParams,
    required TResult orElse(),
  }) {
    if (updateBalance != null) {
      return updateBalance(this);
    }
    return orElse();
  }
}

abstract class _UpdateBalanceExpertEvent extends ExpertEvent {
  const factory _UpdateBalanceExpertEvent() = _$_UpdateBalanceExpertEvent;
  const _UpdateBalanceExpertEvent._() : super._();
}

/// @nodoc
abstract class _$$_CalculateParamsExpertEventCopyWith<$Res> {
  factory _$$_CalculateParamsExpertEventCopyWith(
          _$_CalculateParamsExpertEvent value, $Res Function(_$_CalculateParamsExpertEvent) then) =
      __$$_CalculateParamsExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> stepRateList, double tradeBalance, int stocksAmount});
}

/// @nodoc
class __$$_CalculateParamsExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_CalculateParamsExpertEvent>
    implements _$$_CalculateParamsExpertEventCopyWith<$Res> {
  __$$_CalculateParamsExpertEventCopyWithImpl(
      _$_CalculateParamsExpertEvent _value, $Res Function(_$_CalculateParamsExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepRateList = null,
    Object? tradeBalance = null,
    Object? stocksAmount = null,
  }) {
    return _then(_$_CalculateParamsExpertEvent(
      stepRateList: null == stepRateList
          ? _value._stepRateList
          : stepRateList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tradeBalance: null == tradeBalance
          ? _value.tradeBalance
          : tradeBalance // ignore: cast_nullable_to_non_nullable
              as double,
      stocksAmount: null == stocksAmount
          ? _value.stocksAmount
          : stocksAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CalculateParamsExpertEvent extends _CalculateParamsExpertEvent {
  const _$_CalculateParamsExpertEvent(
      {required final List<int> stepRateList, required this.tradeBalance, required this.stocksAmount})
      : _stepRateList = stepRateList,
        super._();

  final List<int> _stepRateList;
  @override
  List<int> get stepRateList {
    if (_stepRateList is EqualUnmodifiableListView) return _stepRateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepRateList);
  }

  @override
  final double tradeBalance;
  @override
  final int stocksAmount;

  @override
  String toString() {
    return 'ExpertEvent.calculateParams(stepRateList: $stepRateList, tradeBalance: $tradeBalance, stocksAmount: $stocksAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculateParamsExpertEvent &&
            const DeepCollectionEquality().equals(other._stepRateList, _stepRateList) &&
            (identical(other.tradeBalance, tradeBalance) || other.tradeBalance == tradeBalance) &&
            (identical(other.stocksAmount, stocksAmount) || other.stocksAmount == stocksAmount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stepRateList), tradeBalance, stocksAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculateParamsExpertEventCopyWith<_$_CalculateParamsExpertEvent> get copyWith =>
      __$$_CalculateParamsExpertEventCopyWithImpl<_$_CalculateParamsExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateBalance,
    required TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount) calculateParams,
  }) {
    return calculateParams(stepRateList, tradeBalance, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateBalance,
    TResult? Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
  }) {
    return calculateParams?.call(stepRateList, tradeBalance, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateBalance,
    TResult Function(List<int> stepRateList, double tradeBalance, int stocksAmount)? calculateParams,
    required TResult orElse(),
  }) {
    if (calculateParams != null) {
      return calculateParams(stepRateList, tradeBalance, stocksAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBalanceExpertEvent value) updateBalance,
    required TResult Function(_CalculateParamsExpertEvent value) calculateParams,
  }) {
    return calculateParams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult? Function(_CalculateParamsExpertEvent value)? calculateParams,
  }) {
    return calculateParams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBalanceExpertEvent value)? updateBalance,
    TResult Function(_CalculateParamsExpertEvent value)? calculateParams,
    required TResult orElse(),
  }) {
    if (calculateParams != null) {
      return calculateParams(this);
    }
    return orElse();
  }
}

abstract class _CalculateParamsExpertEvent extends ExpertEvent {
  const factory _CalculateParamsExpertEvent(
      {required final List<int> stepRateList,
      required final double tradeBalance,
      required final int stocksAmount}) = _$_CalculateParamsExpertEvent;
  const _CalculateParamsExpertEvent._() : super._();

  List<int> get stepRateList;
  double get tradeBalance;
  int get stocksAmount;
  @JsonKey(ignore: true)
  _$$_CalculateParamsExpertEventCopyWith<_$_CalculateParamsExpertEvent> get copyWith =>
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
}

/// @nodoc
abstract class _$$_InitializedExpertStateCopyWith<$Res> implements $ExpertStateCopyWith<$Res> {
  factory _$$_InitializedExpertStateCopyWith(
          _$_InitializedExpertState value, $Res Function(_$_InitializedExpertState) then) =
      __$$_InitializedExpertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer});
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
