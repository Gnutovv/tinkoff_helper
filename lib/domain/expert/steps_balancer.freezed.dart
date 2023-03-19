// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps_balancer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StepsBalancer {
  @HiveField(0)
  List<int> get stepRateList => throw _privateConstructorUsedError;
  @HiveField(1)
  double get tradeBalance => throw _privateConstructorUsedError;
  @HiveField(2)
  int get stocksAmount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StepBalancer value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StepBalancer value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StepBalancer value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepsBalancerCopyWith<StepsBalancer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsBalancerCopyWith<$Res> {
  factory $StepsBalancerCopyWith(StepsBalancer value, $Res Function(StepsBalancer) then) =
      _$StepsBalancerCopyWithImpl<$Res, StepsBalancer>;
  @useResult
  $Res call({@HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount});
}

/// @nodoc
class _$StepsBalancerCopyWithImpl<$Res, $Val extends StepsBalancer> implements $StepsBalancerCopyWith<$Res> {
  _$StepsBalancerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepRateList = null,
    Object? tradeBalance = null,
    Object? stocksAmount = null,
  }) {
    return _then(_value.copyWith(
      stepRateList: null == stepRateList
          ? _value.stepRateList
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepBalancerCopyWith<$Res> implements $StepsBalancerCopyWith<$Res> {
  factory _$$_StepBalancerCopyWith(_$_StepBalancer value, $Res Function(_$_StepBalancer) then) =
      __$$_StepBalancerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount});
}

/// @nodoc
class __$$_StepBalancerCopyWithImpl<$Res> extends _$StepsBalancerCopyWithImpl<$Res, _$_StepBalancer>
    implements _$$_StepBalancerCopyWith<$Res> {
  __$$_StepBalancerCopyWithImpl(_$_StepBalancer _value, $Res Function(_$_StepBalancer) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepRateList = null,
    Object? tradeBalance = null,
    Object? stocksAmount = null,
  }) {
    return _then(_$_StepBalancer(
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

@HiveType(typeId: 0, adapterName: 'StepsBalancerAdapter')
class _$_StepBalancer extends _StepBalancer {
  const _$_StepBalancer(
      {@HiveField(0) required final List<int> stepRateList,
      @HiveField(1) required this.tradeBalance,
      @HiveField(2) required this.stocksAmount})
      : _stepRateList = stepRateList,
        super._();

  final List<int> _stepRateList;
  @override
  @HiveField(0)
  List<int> get stepRateList {
    if (_stepRateList is EqualUnmodifiableListView) return _stepRateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepRateList);
  }

  @override
  @HiveField(1)
  final double tradeBalance;
  @override
  @HiveField(2)
  final int stocksAmount;

  @override
  String toString() {
    return 'StepsBalancer.create(stepRateList: $stepRateList, tradeBalance: $tradeBalance, stocksAmount: $stocksAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepBalancer &&
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
  _$$_StepBalancerCopyWith<_$_StepBalancer> get copyWith =>
      __$$_StepBalancerCopyWithImpl<_$_StepBalancer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)
        create,
  }) {
    return create(stepRateList, tradeBalance, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)?
        create,
  }) {
    return create?.call(stepRateList, tradeBalance, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) List<int> stepRateList, @HiveField(1) double tradeBalance, @HiveField(2) int stocksAmount)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(stepRateList, tradeBalance, stocksAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StepBalancer value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StepBalancer value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StepBalancer value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _StepBalancer extends StepsBalancer {
  const factory _StepBalancer(
      {@HiveField(0) required final List<int> stepRateList,
      @HiveField(1) required final double tradeBalance,
      @HiveField(2) required final int stocksAmount}) = _$_StepBalancer;
  const _StepBalancer._() : super._();

  @override
  @HiveField(0)
  List<int> get stepRateList;
  @override
  @HiveField(1)
  double get tradeBalance;
  @override
  @HiveField(2)
  int get stocksAmount;
  @override
  @JsonKey(ignore: true)
  _$$_StepBalancerCopyWith<_$_StepBalancer> get copyWith => throw _privateConstructorUsedError;
}
