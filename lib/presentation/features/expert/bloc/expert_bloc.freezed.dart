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
    required TResult Function(UserAccount userAccount) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount) updateBalancer,
    required TResult Function(double newBalance) updateTradeBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult? Function(double newBalance)? updateTradeBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult Function(double newBalance)? updateTradeBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
    required TResult Function(_UpdateTradeBalanceExpertEvent value) updateTradeBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult? Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
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
  $Res call({UserAccount userAccount});

  $UserAccountCopyWith<$Res> get userAccount;
}

/// @nodoc
class __$$_InitExpertEventCopyWithImpl<$Res> extends _$ExpertEventCopyWithImpl<$Res, _$_InitExpertEvent>
    implements _$$_InitExpertEventCopyWith<$Res> {
  __$$_InitExpertEventCopyWithImpl(_$_InitExpertEvent _value, $Res Function(_$_InitExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
  }) {
    return _then(_$_InitExpertEvent(
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAccountCopyWith<$Res> get userAccount {
    return $UserAccountCopyWith<$Res>(_value.userAccount, (value) {
      return _then(_value.copyWith(userAccount: value));
    });
  }
}

/// @nodoc

class _$_InitExpertEvent extends _InitExpertEvent {
  const _$_InitExpertEvent({required this.userAccount}) : super._();

  @override
  final UserAccount userAccount;

  @override
  String toString() {
    return 'ExpertEvent.init(userAccount: $userAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitExpertEvent &&
            (identical(other.userAccount, userAccount) || other.userAccount == userAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith =>
      __$$_InitExpertEventCopyWithImpl<_$_InitExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount userAccount) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount) updateBalancer,
    required TResult Function(double newBalance) updateTradeBalance,
  }) {
    return init(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult? Function(double newBalance)? updateTradeBalance,
  }) {
    return init?.call(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult Function(double newBalance)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(userAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
    required TResult Function(_UpdateTradeBalanceExpertEvent value) updateTradeBalance,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult? Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitExpertEvent extends ExpertEvent {
  const factory _InitExpertEvent({required final UserAccount userAccount}) = _$_InitExpertEvent;
  const _InitExpertEvent._() : super._();

  UserAccount get userAccount;
  @JsonKey(ignore: true)
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBalancerExpertEventCopyWith<$Res> {
  factory _$$_UpdateBalancerExpertEventCopyWith(
          _$_UpdateBalancerExpertEvent value, $Res Function(_$_UpdateBalancerExpertEvent) then) =
      __$$_UpdateBalancerExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int>? stepsRateList, int? stocksAmount});
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
    ));
  }
}

/// @nodoc

class _$_UpdateBalancerExpertEvent extends _UpdateBalancerExpertEvent {
  const _$_UpdateBalancerExpertEvent({final List<int>? stepsRateList, this.stocksAmount})
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
  String toString() {
    return 'ExpertEvent.updateBalancer(stepsRateList: $stepsRateList, stocksAmount: $stocksAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBalancerExpertEvent &&
            const DeepCollectionEquality().equals(other._stepsRateList, _stepsRateList) &&
            (identical(other.stocksAmount, stocksAmount) || other.stocksAmount == stocksAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_stepsRateList), stocksAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBalancerExpertEventCopyWith<_$_UpdateBalancerExpertEvent> get copyWith =>
      __$$_UpdateBalancerExpertEventCopyWithImpl<_$_UpdateBalancerExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount userAccount) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount) updateBalancer,
    required TResult Function(double newBalance) updateTradeBalance,
  }) {
    return updateBalancer(stepsRateList, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult? Function(double newBalance)? updateTradeBalance,
  }) {
    return updateBalancer?.call(stepsRateList, stocksAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult Function(double newBalance)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(stepsRateList, stocksAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
    required TResult Function(_UpdateTradeBalanceExpertEvent value) updateTradeBalance,
  }) {
    return updateBalancer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult? Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
  }) {
    return updateBalancer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(this);
    }
    return orElse();
  }
}

abstract class _UpdateBalancerExpertEvent extends ExpertEvent {
  const factory _UpdateBalancerExpertEvent({final List<int>? stepsRateList, final int? stocksAmount}) =
      _$_UpdateBalancerExpertEvent;
  const _UpdateBalancerExpertEvent._() : super._();

  List<int>? get stepsRateList;
  int? get stocksAmount;
  @JsonKey(ignore: true)
  _$$_UpdateBalancerExpertEventCopyWith<_$_UpdateBalancerExpertEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTradeBalanceExpertEventCopyWith<$Res> {
  factory _$$_UpdateTradeBalanceExpertEventCopyWith(
          _$_UpdateTradeBalanceExpertEvent value, $Res Function(_$_UpdateTradeBalanceExpertEvent) then) =
      __$$_UpdateTradeBalanceExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({double newBalance});
}

/// @nodoc
class __$$_UpdateTradeBalanceExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_UpdateTradeBalanceExpertEvent>
    implements _$$_UpdateTradeBalanceExpertEventCopyWith<$Res> {
  __$$_UpdateTradeBalanceExpertEventCopyWithImpl(
      _$_UpdateTradeBalanceExpertEvent _value, $Res Function(_$_UpdateTradeBalanceExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newBalance = null,
  }) {
    return _then(_$_UpdateTradeBalanceExpertEvent(
      newBalance: null == newBalance
          ? _value.newBalance
          : newBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UpdateTradeBalanceExpertEvent extends _UpdateTradeBalanceExpertEvent {
  const _$_UpdateTradeBalanceExpertEvent({required this.newBalance}) : super._();

  @override
  final double newBalance;

  @override
  String toString() {
    return 'ExpertEvent.updateTradeBalance(newBalance: $newBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTradeBalanceExpertEvent &&
            (identical(other.newBalance, newBalance) || other.newBalance == newBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTradeBalanceExpertEventCopyWith<_$_UpdateTradeBalanceExpertEvent> get copyWith =>
      __$$_UpdateTradeBalanceExpertEventCopyWithImpl<_$_UpdateTradeBalanceExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount userAccount) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount) updateBalancer,
    required TResult Function(double newBalance) updateTradeBalance,
  }) {
    return updateTradeBalance(newBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult? Function(double newBalance)? updateTradeBalance,
  }) {
    return updateTradeBalance?.call(newBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount)? updateBalancer,
    TResult Function(double newBalance)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (updateTradeBalance != null) {
      return updateTradeBalance(newBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_UpdateBalancerExpertEvent value) updateBalancer,
    required TResult Function(_UpdateTradeBalanceExpertEvent value) updateTradeBalance,
  }) {
    return updateTradeBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult? Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
  }) {
    return updateTradeBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_UpdateBalancerExpertEvent value)? updateBalancer,
    TResult Function(_UpdateTradeBalanceExpertEvent value)? updateTradeBalance,
    required TResult orElse(),
  }) {
    if (updateTradeBalance != null) {
      return updateTradeBalance(this);
    }
    return orElse();
  }
}

abstract class _UpdateTradeBalanceExpertEvent extends ExpertEvent {
  const factory _UpdateTradeBalanceExpertEvent({required final double newBalance}) = _$_UpdateTradeBalanceExpertEvent;
  const _UpdateTradeBalanceExpertEvent._() : super._();

  double get newBalance;
  @JsonKey(ignore: true)
  _$$_UpdateTradeBalanceExpertEventCopyWith<_$_UpdateTradeBalanceExpertEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpertState {
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  UserAccount? get account => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, UserAccount? account) initialized,
    required TResult Function(StepsBalancer balancer, UserAccount? account) inProgress,
    required TResult Function(StepsBalancer balancer, UserAccount? account, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult? Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult? Function(StepsBalancer balancer, UserAccount? account, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult Function(StepsBalancer balancer, UserAccount? account, String message)? error,
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
  $Res call({StepsBalancer balancer, UserAccount? account});

  $UserAccountCopyWith<$Res>? get account;
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
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $UserAccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
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
  $Res call({StepsBalancer balancer, UserAccount? account});

  @override
  $UserAccountCopyWith<$Res>? get account;
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
    Object? account = freezed,
  }) {
    return _then(_$_InitializedExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
    ));
  }
}

/// @nodoc

class _$_InitializedExpertState extends _InitializedExpertState {
  _$_InitializedExpertState({required this.balancer, this.account}) : super._();

  @override
  final StepsBalancer balancer;
  @override
  final UserAccount? account;

  @override
  String toString() {
    return 'ExpertState.initialized(balancer: $balancer, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedExpertStateCopyWith<_$_InitializedExpertState> get copyWith =>
      __$$_InitializedExpertStateCopyWithImpl<_$_InitializedExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, UserAccount? account) initialized,
    required TResult Function(StepsBalancer balancer, UserAccount? account) inProgress,
    required TResult Function(StepsBalancer balancer, UserAccount? account, String message) error,
  }) {
    return initialized(balancer, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult? Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult? Function(StepsBalancer balancer, UserAccount? account, String message)? error,
  }) {
    return initialized?.call(balancer, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult Function(StepsBalancer balancer, UserAccount? account, String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(balancer, account);
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
  factory _InitializedExpertState({required final StepsBalancer balancer, final UserAccount? account}) =
      _$_InitializedExpertState;
  _InitializedExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  UserAccount? get account;
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
  $Res call({StepsBalancer balancer, UserAccount? account});

  @override
  $UserAccountCopyWith<$Res>? get account;
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
    Object? account = freezed,
  }) {
    return _then(_$_InProgressExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
    ));
  }
}

/// @nodoc

class _$_InProgressExpertState extends _InProgressExpertState {
  _$_InProgressExpertState({required this.balancer, this.account}) : super._();

  @override
  final StepsBalancer balancer;
  @override
  final UserAccount? account;

  @override
  String toString() {
    return 'ExpertState.inProgress(balancer: $balancer, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressExpertStateCopyWith<_$_InProgressExpertState> get copyWith =>
      __$$_InProgressExpertStateCopyWithImpl<_$_InProgressExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, UserAccount? account) initialized,
    required TResult Function(StepsBalancer balancer, UserAccount? account) inProgress,
    required TResult Function(StepsBalancer balancer, UserAccount? account, String message) error,
  }) {
    return inProgress(balancer, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult? Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult? Function(StepsBalancer balancer, UserAccount? account, String message)? error,
  }) {
    return inProgress?.call(balancer, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult Function(StepsBalancer balancer, UserAccount? account, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(balancer, account);
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
  factory _InProgressExpertState({required final StepsBalancer balancer, final UserAccount? account}) =
      _$_InProgressExpertState;
  _InProgressExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  UserAccount? get account;
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
  $Res call({StepsBalancer balancer, UserAccount? account, String message});

  @override
  $UserAccountCopyWith<$Res>? get account;
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
    Object? account = freezed,
    Object? message = null,
  }) {
    return _then(_$_ErrorExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorExpertState extends _ErrorExpertState {
  _$_ErrorExpertState({required this.balancer, this.account, required this.message}) : super._();

  @override
  final StepsBalancer balancer;
  @override
  final UserAccount? account;
  @override
  final String message;

  @override
  String toString() {
    return 'ExpertState.error(balancer: $balancer, account: $account, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, account, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith =>
      __$$_ErrorExpertStateCopyWithImpl<_$_ErrorExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, UserAccount? account) initialized,
    required TResult Function(StepsBalancer balancer, UserAccount? account) inProgress,
    required TResult Function(StepsBalancer balancer, UserAccount? account, String message) error,
  }) {
    return error(balancer, account, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult? Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult? Function(StepsBalancer balancer, UserAccount? account, String message)? error,
  }) {
    return error?.call(balancer, account, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, UserAccount? account)? initialized,
    TResult Function(StepsBalancer balancer, UserAccount? account)? inProgress,
    TResult Function(StepsBalancer balancer, UserAccount? account, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(balancer, account, message);
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
  factory _ErrorExpertState(
      {required final StepsBalancer balancer,
      final UserAccount? account,
      required final String message}) = _$_ErrorExpertState;
  _ErrorExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  UserAccount? get account;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith => throw _privateConstructorUsedError;
}
