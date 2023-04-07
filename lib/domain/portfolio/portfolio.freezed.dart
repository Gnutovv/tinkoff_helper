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
  MoneyValue get totalAmountShares => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoneyValue totalAmountShares, bool blocked) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoneyValue totalAmountShares, bool blocked)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoneyValue totalAmountShares, bool blocked)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPortfolio value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewPortfolio value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPortfolio value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioCopyWith<Portfolio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCopyWith<$Res> {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) then) = _$PortfolioCopyWithImpl<$Res, Portfolio>;
  @useResult
  $Res call({MoneyValue totalAmountShares, bool blocked});
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
    Object? totalAmountShares = null,
    Object? blocked = null,
  }) {
    return _then(_value.copyWith(
      totalAmountShares: null == totalAmountShares
          ? _value.totalAmountShares
          : totalAmountShares // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPortfolioCopyWith<$Res> implements $PortfolioCopyWith<$Res> {
  factory _$$_NewPortfolioCopyWith(_$_NewPortfolio value, $Res Function(_$_NewPortfolio) then) =
      __$$_NewPortfolioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoneyValue totalAmountShares, bool blocked});
}

/// @nodoc
class __$$_NewPortfolioCopyWithImpl<$Res> extends _$PortfolioCopyWithImpl<$Res, _$_NewPortfolio>
    implements _$$_NewPortfolioCopyWith<$Res> {
  __$$_NewPortfolioCopyWithImpl(_$_NewPortfolio _value, $Res Function(_$_NewPortfolio) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmountShares = null,
    Object? blocked = null,
  }) {
    return _then(_$_NewPortfolio(
      totalAmountShares: null == totalAmountShares
          ? _value.totalAmountShares
          : totalAmountShares // ignore: cast_nullable_to_non_nullable
              as MoneyValue,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewPortfolio extends _NewPortfolio {
  const _$_NewPortfolio({required this.totalAmountShares, required this.blocked}) : super._();

  @override
  final MoneyValue totalAmountShares;
  @override
  final bool blocked;

  @override
  String toString() {
    return 'Portfolio.create(totalAmountShares: $totalAmountShares, blocked: $blocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPortfolio &&
            (identical(other.totalAmountShares, totalAmountShares) || other.totalAmountShares == totalAmountShares) &&
            (identical(other.blocked, blocked) || other.blocked == blocked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalAmountShares, blocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPortfolioCopyWith<_$_NewPortfolio> get copyWith =>
      __$$_NewPortfolioCopyWithImpl<_$_NewPortfolio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoneyValue totalAmountShares, bool blocked) create,
  }) {
    return create(totalAmountShares, blocked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoneyValue totalAmountShares, bool blocked)? create,
  }) {
    return create?.call(totalAmountShares, blocked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoneyValue totalAmountShares, bool blocked)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(totalAmountShares, blocked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewPortfolio value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewPortfolio value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewPortfolio value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _NewPortfolio extends Portfolio {
  const factory _NewPortfolio({required final MoneyValue totalAmountShares, required final bool blocked}) =
      _$_NewPortfolio;
  const _NewPortfolio._() : super._();

  @override
  MoneyValue get totalAmountShares;
  @override
  bool get blocked;
  @override
  @JsonKey(ignore: true)
  _$$_NewPortfolioCopyWith<_$_NewPortfolio> get copyWith => throw _privateConstructorUsedError;
}
