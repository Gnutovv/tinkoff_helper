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
  StockInstrument get instrument => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get recommendationQuantity => throw _privateConstructorUsedError;
  bool get canBuy => throw _privateConstructorUsedError;
  List<double> get stepsPrices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpertPositionCopyWith<ExpertPosition> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertPositionCopyWith<$Res> {
  factory $ExpertPositionCopyWith(ExpertPosition value, $Res Function(ExpertPosition) then) =
      _$ExpertPositionCopyWithImpl<$Res, ExpertPosition>;
  @useResult
  $Res call(
      {StockInstrument instrument, int quantity, int recommendationQuantity, bool canBuy, List<double> stepsPrices});

  $StockInstrumentCopyWith<$Res> get instrument;
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
    Object? quantity = null,
    Object? recommendationQuantity = null,
    Object? canBuy = null,
    Object? stepsPrices = null,
  }) {
    return _then(_value.copyWith(
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as StockInstrument,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      recommendationQuantity: null == recommendationQuantity
          ? _value.recommendationQuantity
          : recommendationQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      canBuy: null == canBuy
          ? _value.canBuy
          : canBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      stepsPrices: null == stepsPrices
          ? _value.stepsPrices
          : stepsPrices // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockInstrumentCopyWith<$Res> get instrument {
    return $StockInstrumentCopyWith<$Res>(_value.instrument, (value) {
      return _then(_value.copyWith(instrument: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExpertPositionCopyWith<$Res> implements $ExpertPositionCopyWith<$Res> {
  factory _$$_ExpertPositionCopyWith(_$_ExpertPosition value, $Res Function(_$_ExpertPosition) then) =
      __$$_ExpertPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StockInstrument instrument, int quantity, int recommendationQuantity, bool canBuy, List<double> stepsPrices});

  @override
  $StockInstrumentCopyWith<$Res> get instrument;
}

/// @nodoc
class __$$_ExpertPositionCopyWithImpl<$Res> extends _$ExpertPositionCopyWithImpl<$Res, _$_ExpertPosition>
    implements _$$_ExpertPositionCopyWith<$Res> {
  __$$_ExpertPositionCopyWithImpl(_$_ExpertPosition _value, $Res Function(_$_ExpertPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instrument = null,
    Object? quantity = null,
    Object? recommendationQuantity = null,
    Object? canBuy = null,
    Object? stepsPrices = null,
  }) {
    return _then(_$_ExpertPosition(
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as StockInstrument,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      recommendationQuantity: null == recommendationQuantity
          ? _value.recommendationQuantity
          : recommendationQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      canBuy: null == canBuy
          ? _value.canBuy
          : canBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      stepsPrices: null == stepsPrices
          ? _value._stepsPrices
          : stepsPrices // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_ExpertPosition extends _ExpertPosition {
  const _$_ExpertPosition(
      {required this.instrument,
      required this.quantity,
      required this.recommendationQuantity,
      required this.canBuy,
      required final List<double> stepsPrices})
      : _stepsPrices = stepsPrices,
        super._();

  @override
  final StockInstrument instrument;
  @override
  final int quantity;
  @override
  final int recommendationQuantity;
  @override
  final bool canBuy;
  final List<double> _stepsPrices;
  @override
  List<double> get stepsPrices {
    if (_stepsPrices is EqualUnmodifiableListView) return _stepsPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepsPrices);
  }

  @override
  String toString() {
    return 'ExpertPosition(instrument: $instrument, quantity: $quantity, recommendationQuantity: $recommendationQuantity, canBuy: $canBuy, stepsPrices: $stepsPrices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpertPosition &&
            (identical(other.instrument, instrument) || other.instrument == instrument) &&
            (identical(other.quantity, quantity) || other.quantity == quantity) &&
            (identical(other.recommendationQuantity, recommendationQuantity) ||
                other.recommendationQuantity == recommendationQuantity) &&
            (identical(other.canBuy, canBuy) || other.canBuy == canBuy) &&
            const DeepCollectionEquality().equals(other._stepsPrices, _stepsPrices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instrument, quantity, recommendationQuantity, canBuy,
      const DeepCollectionEquality().hash(_stepsPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpertPositionCopyWith<_$_ExpertPosition> get copyWith =>
      __$$_ExpertPositionCopyWithImpl<_$_ExpertPosition>(this, _$identity);
}

abstract class _ExpertPosition extends ExpertPosition {
  const factory _ExpertPosition(
      {required final StockInstrument instrument,
      required final int quantity,
      required final int recommendationQuantity,
      required final bool canBuy,
      required final List<double> stepsPrices}) = _$_ExpertPosition;
  const _ExpertPosition._() : super._();

  @override
  StockInstrument get instrument;
  @override
  int get quantity;
  @override
  int get recommendationQuantity;
  @override
  bool get canBuy;
  @override
  List<double> get stepsPrices;
  @override
  @JsonKey(ignore: true)
  _$$_ExpertPositionCopyWith<_$_ExpertPosition> get copyWith => throw _privateConstructorUsedError;
}
