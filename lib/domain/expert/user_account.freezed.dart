// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAccount {
  String get accountId => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  double get totalBalance => throw _privateConstructorUsedError;
  double get tradeBalance => throw _privateConstructorUsedError;
  double get freeBalance => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)
        newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)?
        newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)?
        newUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewUserAccount value) newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewUserAccount value)? newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewUserAccount value)? newUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAccountCopyWith<UserAccount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call({String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount> implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accountName = null,
    Object? totalBalance = null,
    Object? tradeBalance = null,
    Object? freeBalance = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      tradeBalance: null == tradeBalance
          ? _value.tradeBalance
          : tradeBalance // ignore: cast_nullable_to_non_nullable
              as double,
      freeBalance: null == freeBalance
          ? _value.freeBalance
          : freeBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewUserAccountCopyWith<$Res> implements $UserAccountCopyWith<$Res> {
  factory _$$_NewUserAccountCopyWith(_$_NewUserAccount value, $Res Function(_$_NewUserAccount) then) =
      __$$_NewUserAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance});
}

/// @nodoc
class __$$_NewUserAccountCopyWithImpl<$Res> extends _$UserAccountCopyWithImpl<$Res, _$_NewUserAccount>
    implements _$$_NewUserAccountCopyWith<$Res> {
  __$$_NewUserAccountCopyWithImpl(_$_NewUserAccount _value, $Res Function(_$_NewUserAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accountName = null,
    Object? totalBalance = null,
    Object? tradeBalance = null,
    Object? freeBalance = null,
  }) {
    return _then(_$_NewUserAccount(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      tradeBalance: null == tradeBalance
          ? _value.tradeBalance
          : tradeBalance // ignore: cast_nullable_to_non_nullable
              as double,
      freeBalance: null == freeBalance
          ? _value.freeBalance
          : freeBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_NewUserAccount extends _NewUserAccount {
  const _$_NewUserAccount(
      {required this.accountId,
      required this.accountName,
      required this.totalBalance,
      required this.tradeBalance,
      required this.freeBalance})
      : super._();

  @override
  final String accountId;
  @override
  final String accountName;
  @override
  final double totalBalance;
  @override
  final double tradeBalance;
  @override
  final double freeBalance;

  @override
  String toString() {
    return 'UserAccount.newUser(accountId: $accountId, accountName: $accountName, totalBalance: $totalBalance, tradeBalance: $tradeBalance, freeBalance: $freeBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewUserAccount &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.accountName, accountName) || other.accountName == accountName) &&
            (identical(other.totalBalance, totalBalance) || other.totalBalance == totalBalance) &&
            (identical(other.tradeBalance, tradeBalance) || other.tradeBalance == tradeBalance) &&
            (identical(other.freeBalance, freeBalance) || other.freeBalance == freeBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, accountName, totalBalance, tradeBalance, freeBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewUserAccountCopyWith<_$_NewUserAccount> get copyWith =>
      __$$_NewUserAccountCopyWithImpl<_$_NewUserAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)
        newUser,
  }) {
    return newUser(accountId, accountName, totalBalance, tradeBalance, freeBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)?
        newUser,
  }) {
    return newUser?.call(accountId, accountName, totalBalance, tradeBalance, freeBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accountId, String accountName, double totalBalance, double tradeBalance, double freeBalance)?
        newUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(accountId, accountName, totalBalance, tradeBalance, freeBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewUserAccount value) newUser,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewUserAccount value)? newUser,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewUserAccount value)? newUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class _NewUserAccount extends UserAccount {
  const factory _NewUserAccount(
      {required final String accountId,
      required final String accountName,
      required final double totalBalance,
      required final double tradeBalance,
      required final double freeBalance}) = _$_NewUserAccount;
  const _NewUserAccount._() : super._();

  @override
  String get accountId;
  @override
  String get accountName;
  @override
  double get totalBalance;
  @override
  double get tradeBalance;
  @override
  double get freeBalance;
  @override
  @JsonKey(ignore: true)
  _$$_NewUserAccountCopyWith<_$_NewUserAccount> get copyWith => throw _privateConstructorUsedError;
}
