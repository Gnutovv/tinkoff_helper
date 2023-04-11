// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Portfolio {
  double get totalAmountPortfolio => throw _privateConstructorUsedError;
  double get withdrawLimit => throw _privateConstructorUsedError;
  double get expectedYield => throw _privateConstructorUsedError;
  List<PortfolioPosition> get positions => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioCopyWith<Portfolio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCopyWith<$Res> {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) then) = _$PortfolioCopyWithImpl<$Res, Portfolio>;
  @useResult
  $Res call(
      {double totalAmountPortfolio,
      double withdrawLimit,
      double expectedYield,
      List<PortfolioPosition> positions,
      String accountId,
      String accountName});
}

/// @nodoc
class _$PortfolioCopyWithImpl<$Res, $Val extends Portfolio> implements $PortfolioCopyWith<$Res> {
  _$PortfolioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmountPortfolio = null,
    Object? withdrawLimit = null,
    Object? expectedYield = null,
    Object? positions = null,
    Object? accountId = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      totalAmountPortfolio: null == totalAmountPortfolio
          ? _value.totalAmountPortfolio
          : totalAmountPortfolio // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawLimit: null == withdrawLimit
          ? _value.withdrawLimit
          : withdrawLimit // ignore: cast_nullable_to_non_nullable
              as double,
      expectedYield: null == expectedYield
          ? _value.expectedYield
          : expectedYield // ignore: cast_nullable_to_non_nullable
              as double,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioPosition>,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPortfolioCopyWith<$Res> implements $PortfolioCopyWith<$Res> {
  factory _$$_NewPortfolioCopyWith(_$_NewPortfolio value, $Res Function(_$_NewPortfolio) then) =
      __$$_NewPortfolioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalAmountPortfolio,
      double withdrawLimit,
      double expectedYield,
      List<PortfolioPosition> positions,
      String accountId,
      String accountName});
}

/// @nodoc
class __$$_NewPortfolioCopyWithImpl<$Res> extends _$PortfolioCopyWithImpl<$Res, _$_NewPortfolio>
    implements _$$_NewPortfolioCopyWith<$Res> {
  __$$_NewPortfolioCopyWithImpl(_$_NewPortfolio _value, $Res Function(_$_NewPortfolio) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmountPortfolio = null,
    Object? withdrawLimit = null,
    Object? expectedYield = null,
    Object? positions = null,
    Object? accountId = null,
    Object? accountName = null,
  }) {
    return _then(_$_NewPortfolio(
      totalAmountPortfolio: null == totalAmountPortfolio
          ? _value.totalAmountPortfolio
          : totalAmountPortfolio // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawLimit: null == withdrawLimit
          ? _value.withdrawLimit
          : withdrawLimit // ignore: cast_nullable_to_non_nullable
              as double,
      expectedYield: null == expectedYield
          ? _value.expectedYield
          : expectedYield // ignore: cast_nullable_to_non_nullable
              as double,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioPosition>,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPortfolio extends _NewPortfolio {
  const _$_NewPortfolio(
      {required this.totalAmountPortfolio,
      required this.withdrawLimit,
      required this.expectedYield,
      required final List<PortfolioPosition> positions,
      required this.accountId,
      required this.accountName})
      : _positions = positions,
        super._();

  @override
  final double totalAmountPortfolio;
  @override
  final double withdrawLimit;
  @override
  final double expectedYield;
  final List<PortfolioPosition> _positions;
  @override
  List<PortfolioPosition> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  final String accountId;
  @override
  final String accountName;

  @override
  String toString() {
    return 'Portfolio(totalAmountPortfolio: $totalAmountPortfolio, withdrawLimit: $withdrawLimit, expectedYield: $expectedYield, positions: $positions, accountId: $accountId, accountName: $accountName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPortfolio &&
            (identical(other.totalAmountPortfolio, totalAmountPortfolio) ||
                other.totalAmountPortfolio == totalAmountPortfolio) &&
            (identical(other.withdrawLimit, withdrawLimit) || other.withdrawLimit == withdrawLimit) &&
            (identical(other.expectedYield, expectedYield) || other.expectedYield == expectedYield) &&
            const DeepCollectionEquality().equals(other._positions, _positions) &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.accountName, accountName) || other.accountName == accountName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalAmountPortfolio, withdrawLimit, expectedYield,
      const DeepCollectionEquality().hash(_positions), accountId, accountName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPortfolioCopyWith<_$_NewPortfolio> get copyWith =>
      __$$_NewPortfolioCopyWithImpl<_$_NewPortfolio>(this, _$identity);
}

abstract class _NewPortfolio extends Portfolio {
  const factory _NewPortfolio(
      {required final double totalAmountPortfolio,
      required final double withdrawLimit,
      required final double expectedYield,
      required final List<PortfolioPosition> positions,
      required final String accountId,
      required final String accountName}) = _$_NewPortfolio;
  const _NewPortfolio._() : super._();

  @override
  double get totalAmountPortfolio;
  @override
  double get withdrawLimit;
  @override
  double get expectedYield;
  @override
  List<PortfolioPosition> get positions;
  @override
  String get accountId;
  @override
  String get accountName;
  @override
  @JsonKey(ignore: true)
  _$$_NewPortfolioCopyWith<_$_NewPortfolio> get copyWith => throw _privateConstructorUsedError;
}
