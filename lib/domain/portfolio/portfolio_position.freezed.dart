// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioPosition {
  String get figi => throw _privateConstructorUsedError;
  String get instrumentType => throw _privateConstructorUsedError;
  Quotation get quantity => throw _privateConstructorUsedError;
  MoneyValue get averagePositionPrice => throw _privateConstructorUsedError;
  Quotation get expectedYield => throw _privateConstructorUsedError;
  MoneyValue get currentPrice => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)
        newPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)?
        newPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)?
        newPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPortfolioPosition value) newPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewPortfolioPosition value)? newPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPortfolioPosition value)? newPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioPositionCopyWith<PortfolioPosition> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioPositionCopyWith<$Res> {
  factory $PortfolioPositionCopyWith(PortfolioPosition value, $Res Function(PortfolioPosition) then) =
      _$PortfolioPositionCopyWithImpl<$Res, PortfolioPosition>;
  @useResult
  $Res call(
      {String figi,
      String instrumentType,
      Quotation quantity,
      MoneyValue averagePositionPrice,
      Quotation expectedYield,
      MoneyValue currentPrice,
      bool blocked});
}

/// @nodoc
class _$PortfolioPositionCopyWithImpl<$Res, $Val extends PortfolioPosition>
    implements $PortfolioPositionCopyWith<$Res> {
  _$PortfolioPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? figi = null,
    Object? instrumentType = null,
    Object? quantity = null,
    Object? averagePositionPrice = null,
    Object? expectedYield = null,
    Object? currentPrice = null,
    Object? blocked = null,
  }) {
    return _then(_value.copyWith(
      figi: null == figi
          ? _value.figi
          : figi // ignore: cast_nullable_to_non_nullable
              as String,
      instrumentType: null == instrumentType
          ? _value.instrumentType
          : instrumentType // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quotation,
      averagePositionPrice: null == averagePositionPrice
          ? _value.averagePositionPrice
          : averagePositionPrice // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      expectedYield: null == expectedYield
          ? _value.expectedYield
          : expectedYield // ignore: cast_nullable_to_non_nullable
              as Quotation,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPortfolioPositionCopyWith<$Res> implements $PortfolioPositionCopyWith<$Res> {
  factory _$$_NewPortfolioPositionCopyWith(_$_NewPortfolioPosition value, $Res Function(_$_NewPortfolioPosition) then) =
      __$$_NewPortfolioPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String figi,
      String instrumentType,
      Quotation quantity,
      MoneyValue averagePositionPrice,
      Quotation expectedYield,
      MoneyValue currentPrice,
      bool blocked});
}

/// @nodoc
class __$$_NewPortfolioPositionCopyWithImpl<$Res> extends _$PortfolioPositionCopyWithImpl<$Res, _$_NewPortfolioPosition>
    implements _$$_NewPortfolioPositionCopyWith<$Res> {
  __$$_NewPortfolioPositionCopyWithImpl(_$_NewPortfolioPosition _value, $Res Function(_$_NewPortfolioPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? figi = null,
    Object? instrumentType = null,
    Object? quantity = null,
    Object? averagePositionPrice = null,
    Object? expectedYield = null,
    Object? currentPrice = null,
    Object? blocked = null,
  }) {
    return _then(_$_NewPortfolioPosition(
      figi: null == figi
          ? _value.figi
          : figi // ignore: cast_nullable_to_non_nullable
              as String,
      instrumentType: null == instrumentType
          ? _value.instrumentType
          : instrumentType // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quotation,
      averagePositionPrice: null == averagePositionPrice
          ? _value.averagePositionPrice
          : averagePositionPrice // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      expectedYield: null == expectedYield
          ? _value.expectedYield
          : expectedYield // ignore: cast_nullable_to_non_nullable
              as Quotation,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewPortfolioPosition extends _NewPortfolioPosition {
  const _$_NewPortfolioPosition(
      {required this.figi,
      required this.instrumentType,
      required this.quantity,
      required this.averagePositionPrice,
      required this.expectedYield,
      required this.currentPrice,
      required this.blocked})
      : super._();

  @override
  final String figi;
  @override
  final String instrumentType;
  @override
  final Quotation quantity;
  @override
  final MoneyValue averagePositionPrice;
  @override
  final Quotation expectedYield;
  @override
  final MoneyValue currentPrice;
  @override
  final bool blocked;

  @override
  String toString() {
    return 'PortfolioPosition.newPosition(figi: $figi, instrumentType: $instrumentType, quantity: $quantity, averagePositionPrice: $averagePositionPrice, expectedYield: $expectedYield, currentPrice: $currentPrice, blocked: $blocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPortfolioPosition &&
            (identical(other.figi, figi) || other.figi == figi) &&
            (identical(other.instrumentType, instrumentType) || other.instrumentType == instrumentType) &&
            (identical(other.quantity, quantity) || other.quantity == quantity) &&
            (identical(other.averagePositionPrice, averagePositionPrice) ||
                other.averagePositionPrice == averagePositionPrice) &&
            (identical(other.expectedYield, expectedYield) || other.expectedYield == expectedYield) &&
            (identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice) &&
            (identical(other.blocked, blocked) || other.blocked == blocked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, figi, instrumentType, quantity, averagePositionPrice, expectedYield, currentPrice, blocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPortfolioPositionCopyWith<_$_NewPortfolioPosition> get copyWith =>
      __$$_NewPortfolioPositionCopyWithImpl<_$_NewPortfolioPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)
        newPosition,
  }) {
    return newPosition(figi, instrumentType, quantity, averagePositionPrice, expectedYield, currentPrice, blocked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)?
        newPosition,
  }) {
    return newPosition?.call(
        figi, instrumentType, quantity, averagePositionPrice, expectedYield, currentPrice, blocked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String figi, String instrumentType, Quotation quantity, MoneyValue averagePositionPrice,
            Quotation expectedYield, MoneyValue currentPrice, bool blocked)?
        newPosition,
    required TResult orElse(),
  }) {
    if (newPosition != null) {
      return newPosition(figi, instrumentType, quantity, averagePositionPrice, expectedYield, currentPrice, blocked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPortfolioPosition value) newPosition,
  }) {
    return newPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewPortfolioPosition value)? newPosition,
  }) {
    return newPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPortfolioPosition value)? newPosition,
    required TResult orElse(),
  }) {
    if (newPosition != null) {
      return newPosition(this);
    }
    return orElse();
  }
}

abstract class _NewPortfolioPosition extends PortfolioPosition {
  const factory _NewPortfolioPosition(
      {required final String figi,
      required final String instrumentType,
      required final Quotation quantity,
      required final MoneyValue averagePositionPrice,
      required final Quotation expectedYield,
      required final MoneyValue currentPrice,
      required final bool blocked}) = _$_NewPortfolioPosition;
  const _NewPortfolioPosition._() : super._();

  @override
  String get figi;
  @override
  String get instrumentType;
  @override
  Quotation get quantity;
  @override
  MoneyValue get averagePositionPrice;
  @override
  Quotation get expectedYield;
  @override
  MoneyValue get currentPrice;
  @override
  bool get blocked;
  @override
  @JsonKey(ignore: true)
  _$$_NewPortfolioPositionCopyWith<_$_NewPortfolioPosition> get copyWith => throw _privateConstructorUsedError;
}
