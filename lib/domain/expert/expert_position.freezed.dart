// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpertPosition {
  ExpertPortfolioPosition get instrument => throw _privateConstructorUsedError;
  int get recommendAmount => throw _privateConstructorUsedError;
  bool get shouldBuy => throw _privateConstructorUsedError;
  int get currentStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpertPositionCopyWith<ExpertPosition> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertPositionCopyWith<$Res> {
  factory $ExpertPositionCopyWith(ExpertPosition value, $Res Function(ExpertPosition) then) =
      _$ExpertPositionCopyWithImpl<$Res, ExpertPosition>;
  @useResult
  $Res call({ExpertPortfolioPosition instrument, int recommendAmount, bool shouldBuy, int currentStep});

  $ExpertPortfolioPositionCopyWith<$Res> get instrument;
}

/// @nodoc
class _$ExpertPositionCopyWithImpl<$Res, $Val extends ExpertPosition> implements $ExpertPositionCopyWith<$Res> {
  _$ExpertPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instrument = null,
    Object? recommendAmount = null,
    Object? shouldBuy = null,
    Object? currentStep = null,
  }) {
    return _then(_value.copyWith(
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as ExpertPortfolioPosition,
      recommendAmount: null == recommendAmount
          ? _value.recommendAmount
          : recommendAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shouldBuy: null == shouldBuy
          ? _value.shouldBuy
          : shouldBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpertPortfolioPositionCopyWith<$Res> get instrument {
    return $ExpertPortfolioPositionCopyWith<$Res>(_value.instrument, (value) {
      return _then(_value.copyWith(instrument: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpertPositionImplCopyWith<$Res> implements $ExpertPositionCopyWith<$Res> {
  factory _$$ExpertPositionImplCopyWith(_$ExpertPositionImpl value, $Res Function(_$ExpertPositionImpl) then) =
      __$$ExpertPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpertPortfolioPosition instrument, int recommendAmount, bool shouldBuy, int currentStep});

  @override
  $ExpertPortfolioPositionCopyWith<$Res> get instrument;
}

/// @nodoc
class __$$ExpertPositionImplCopyWithImpl<$Res> extends _$ExpertPositionCopyWithImpl<$Res, _$ExpertPositionImpl>
    implements _$$ExpertPositionImplCopyWith<$Res> {
  __$$ExpertPositionImplCopyWithImpl(_$ExpertPositionImpl _value, $Res Function(_$ExpertPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instrument = null,
    Object? recommendAmount = null,
    Object? shouldBuy = null,
    Object? currentStep = null,
  }) {
    return _then(_$ExpertPositionImpl(
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as ExpertPortfolioPosition,
      recommendAmount: null == recommendAmount
          ? _value.recommendAmount
          : recommendAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shouldBuy: null == shouldBuy
          ? _value.shouldBuy
          : shouldBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExpertPositionImpl extends _ExpertPosition {
  const _$ExpertPositionImpl(
      {required this.instrument, required this.recommendAmount, required this.shouldBuy, required this.currentStep})
      : super._();

  @override
  final ExpertPortfolioPosition instrument;
  @override
  final int recommendAmount;
  @override
  final bool shouldBuy;
  @override
  final int currentStep;

  @override
  String toString() {
    return 'ExpertPosition(instrument: $instrument, recommendAmount: $recommendAmount, shouldBuy: $shouldBuy, currentStep: $currentStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertPositionImpl &&
            (identical(other.instrument, instrument) || other.instrument == instrument) &&
            (identical(other.recommendAmount, recommendAmount) || other.recommendAmount == recommendAmount) &&
            (identical(other.shouldBuy, shouldBuy) || other.shouldBuy == shouldBuy) &&
            (identical(other.currentStep, currentStep) || other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instrument, recommendAmount, shouldBuy, currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertPositionImplCopyWith<_$ExpertPositionImpl> get copyWith =>
      __$$ExpertPositionImplCopyWithImpl<_$ExpertPositionImpl>(this, _$identity);
}

abstract class _ExpertPosition extends ExpertPosition {
  const factory _ExpertPosition(
      {required final ExpertPortfolioPosition instrument,
      required final int recommendAmount,
      required final bool shouldBuy,
      required final int currentStep}) = _$ExpertPositionImpl;
  const _ExpertPosition._() : super._();

  @override
  ExpertPortfolioPosition get instrument;
  @override
  int get recommendAmount;
  @override
  bool get shouldBuy;
  @override
  int get currentStep;
  @override
  @JsonKey(ignore: true)
  _$$ExpertPositionImplCopyWith<_$ExpertPositionImpl> get copyWith => throw _privateConstructorUsedError;
}
