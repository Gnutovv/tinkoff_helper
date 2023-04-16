// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_instrument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockInstrument {
  String get ticker => throw _privateConstructorUsedError;
  String get figi => throw _privateConstructorUsedError;
  int get lot => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lastPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockInstrumentCopyWith<StockInstrument> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInstrumentCopyWith<$Res> {
  factory $StockInstrumentCopyWith(StockInstrument value, $Res Function(StockInstrument) then) =
      _$StockInstrumentCopyWithImpl<$Res, StockInstrument>;
  @useResult
  $Res call({String ticker, String figi, int lot, String currency, String name, String country, double lastPrice});
}

/// @nodoc
class _$StockInstrumentCopyWithImpl<$Res, $Val extends StockInstrument> implements $StockInstrumentCopyWith<$Res> {
  _$StockInstrumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? figi = null,
    Object? lot = null,
    Object? currency = null,
    Object? name = null,
    Object? country = null,
    Object? lastPrice = null,
  }) {
    return _then(_value.copyWith(
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      figi: null == figi
          ? _value.figi
          : figi // ignore: cast_nullable_to_non_nullable
              as String,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockInstrimentCopyWith<$Res> implements $StockInstrumentCopyWith<$Res> {
  factory _$$_StockInstrimentCopyWith(_$_StockInstriment value, $Res Function(_$_StockInstriment) then) =
      __$$_StockInstrimentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticker, String figi, int lot, String currency, String name, String country, double lastPrice});
}

/// @nodoc
class __$$_StockInstrimentCopyWithImpl<$Res> extends _$StockInstrumentCopyWithImpl<$Res, _$_StockInstriment>
    implements _$$_StockInstrimentCopyWith<$Res> {
  __$$_StockInstrimentCopyWithImpl(_$_StockInstriment _value, $Res Function(_$_StockInstriment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? figi = null,
    Object? lot = null,
    Object? currency = null,
    Object? name = null,
    Object? country = null,
    Object? lastPrice = null,
  }) {
    return _then(_$_StockInstriment(
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      figi: null == figi
          ? _value.figi
          : figi // ignore: cast_nullable_to_non_nullable
              as String,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_StockInstriment extends _StockInstriment {
  const _$_StockInstriment(
      {required this.ticker,
      required this.figi,
      required this.lot,
      required this.currency,
      required this.name,
      required this.country,
      required this.lastPrice})
      : super._();

  @override
  final String ticker;
  @override
  final String figi;
  @override
  final int lot;
  @override
  final String currency;
  @override
  final String name;
  @override
  final String country;
  @override
  final double lastPrice;

  @override
  String toString() {
    return 'StockInstrument(ticker: $ticker, figi: $figi, lot: $lot, currency: $currency, name: $name, country: $country, lastPrice: $lastPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockInstriment &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.figi, figi) || other.figi == figi) &&
            (identical(other.lot, lot) || other.lot == lot) &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lastPrice, lastPrice) || other.lastPrice == lastPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticker, figi, lot, currency, name, country, lastPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockInstrimentCopyWith<_$_StockInstriment> get copyWith =>
      __$$_StockInstrimentCopyWithImpl<_$_StockInstriment>(this, _$identity);
}

abstract class _StockInstriment extends StockInstrument {
  const factory _StockInstriment(
      {required final String ticker,
      required final String figi,
      required final int lot,
      required final String currency,
      required final String name,
      required final String country,
      required final double lastPrice}) = _$_StockInstriment;
  const _StockInstriment._() : super._();

  @override
  String get ticker;
  @override
  String get figi;
  @override
  int get lot;
  @override
  String get currency;
  @override
  String get name;
  @override
  String get country;
  @override
  double get lastPrice;
  @override
  @JsonKey(ignore: true)
  _$$_StockInstrimentCopyWith<_$_StockInstriment> get copyWith => throw _privateConstructorUsedError;
}
