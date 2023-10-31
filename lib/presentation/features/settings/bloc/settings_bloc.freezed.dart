// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey) checkToken,
    required TResult Function(Account account) switchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey)? checkToken,
    TResult? Function(Account account)? switchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey)? checkToken,
    TResult Function(Account account)? switchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckTokenSettingsEvent value) checkToken,
    required TResult Function(_SwitchAccountsSettingsEvent value) switchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult? Function(_SwitchAccountsSettingsEvent value)? switchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult Function(_SwitchAccountsSettingsEvent value)? switchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckTokenSettingsEventImplCopyWith<$Res> {
  factory _$$CheckTokenSettingsEventImplCopyWith(
          _$CheckTokenSettingsEventImpl value,
          $Res Function(_$CheckTokenSettingsEventImpl) then) =
      __$$CheckTokenSettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$CheckTokenSettingsEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$CheckTokenSettingsEventImpl>
    implements _$$CheckTokenSettingsEventImplCopyWith<$Res> {
  __$$CheckTokenSettingsEventImplCopyWithImpl(
      _$CheckTokenSettingsEventImpl _value,
      $Res Function(_$CheckTokenSettingsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$CheckTokenSettingsEventImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckTokenSettingsEventImpl extends _CheckTokenSettingsEvent {
  const _$CheckTokenSettingsEventImpl({required this.apiKey}) : super._();

  @override
  final String apiKey;

  @override
  String toString() {
    return 'SettingsEvent.checkToken(apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTokenSettingsEventImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckTokenSettingsEventImplCopyWith<_$CheckTokenSettingsEventImpl>
      get copyWith => __$$CheckTokenSettingsEventImplCopyWithImpl<
          _$CheckTokenSettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey) checkToken,
    required TResult Function(Account account) switchAccount,
  }) {
    return checkToken(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey)? checkToken,
    TResult? Function(Account account)? switchAccount,
  }) {
    return checkToken?.call(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey)? checkToken,
    TResult Function(Account account)? switchAccount,
    required TResult orElse(),
  }) {
    if (checkToken != null) {
      return checkToken(apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckTokenSettingsEvent value) checkToken,
    required TResult Function(_SwitchAccountsSettingsEvent value) switchAccount,
  }) {
    return checkToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult? Function(_SwitchAccountsSettingsEvent value)? switchAccount,
  }) {
    return checkToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult Function(_SwitchAccountsSettingsEvent value)? switchAccount,
    required TResult orElse(),
  }) {
    if (checkToken != null) {
      return checkToken(this);
    }
    return orElse();
  }
}

abstract class _CheckTokenSettingsEvent extends SettingsEvent {
  const factory _CheckTokenSettingsEvent({required final String apiKey}) =
      _$CheckTokenSettingsEventImpl;
  const _CheckTokenSettingsEvent._() : super._();

  String get apiKey;
  @JsonKey(ignore: true)
  _$$CheckTokenSettingsEventImplCopyWith<_$CheckTokenSettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchAccountsSettingsEventImplCopyWith<$Res> {
  factory _$$SwitchAccountsSettingsEventImplCopyWith(
          _$SwitchAccountsSettingsEventImpl value,
          $Res Function(_$SwitchAccountsSettingsEventImpl) then) =
      __$$SwitchAccountsSettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$SwitchAccountsSettingsEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SwitchAccountsSettingsEventImpl>
    implements _$$SwitchAccountsSettingsEventImplCopyWith<$Res> {
  __$$SwitchAccountsSettingsEventImplCopyWithImpl(
      _$SwitchAccountsSettingsEventImpl _value,
      $Res Function(_$SwitchAccountsSettingsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$SwitchAccountsSettingsEventImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$SwitchAccountsSettingsEventImpl extends _SwitchAccountsSettingsEvent {
  const _$SwitchAccountsSettingsEventImpl({required this.account}) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'SettingsEvent.switchAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchAccountsSettingsEventImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchAccountsSettingsEventImplCopyWith<_$SwitchAccountsSettingsEventImpl>
      get copyWith => __$$SwitchAccountsSettingsEventImplCopyWithImpl<
          _$SwitchAccountsSettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String apiKey) checkToken,
    required TResult Function(Account account) switchAccount,
  }) {
    return switchAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String apiKey)? checkToken,
    TResult? Function(Account account)? switchAccount,
  }) {
    return switchAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apiKey)? checkToken,
    TResult Function(Account account)? switchAccount,
    required TResult orElse(),
  }) {
    if (switchAccount != null) {
      return switchAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckTokenSettingsEvent value) checkToken,
    required TResult Function(_SwitchAccountsSettingsEvent value) switchAccount,
  }) {
    return switchAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult? Function(_SwitchAccountsSettingsEvent value)? switchAccount,
  }) {
    return switchAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckTokenSettingsEvent value)? checkToken,
    TResult Function(_SwitchAccountsSettingsEvent value)? switchAccount,
    required TResult orElse(),
  }) {
    if (switchAccount != null) {
      return switchAccount(this);
    }
    return orElse();
  }
}

abstract class _SwitchAccountsSettingsEvent extends SettingsEvent {
  const factory _SwitchAccountsSettingsEvent({required final Account account}) =
      _$SwitchAccountsSettingsEventImpl;
  const _SwitchAccountsSettingsEvent._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$SwitchAccountsSettingsEventImplCopyWith<_$SwitchAccountsSettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noApiKey,
    required TResult Function(String apiKey) inProgress,
    required TResult Function(String apiKey, List<Account> accounts) success,
    required TResult Function(String message, String apiKey) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noApiKey,
    TResult? Function(String apiKey)? inProgress,
    TResult? Function(String apiKey, List<Account> accounts)? success,
    TResult? Function(String message, String apiKey)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noApiKey,
    TResult Function(String apiKey)? inProgress,
    TResult Function(String apiKey, List<Account> accounts)? success,
    TResult Function(String message, String apiKey)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoApiKyeSettingsState value) noApiKey,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_SuccessSettingsState value) success,
    required TResult Function(_FailedSettingsState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_SuccessSettingsState value)? success,
    TResult? Function(_FailedSettingsState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_SuccessSettingsState value)? success,
    TResult Function(_FailedSettingsState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoApiKyeSettingsStateImplCopyWith<$Res> {
  factory _$$NoApiKyeSettingsStateImplCopyWith(
          _$NoApiKyeSettingsStateImpl value,
          $Res Function(_$NoApiKyeSettingsStateImpl) then) =
      __$$NoApiKyeSettingsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoApiKyeSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$NoApiKyeSettingsStateImpl>
    implements _$$NoApiKyeSettingsStateImplCopyWith<$Res> {
  __$$NoApiKyeSettingsStateImplCopyWithImpl(_$NoApiKyeSettingsStateImpl _value,
      $Res Function(_$NoApiKyeSettingsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoApiKyeSettingsStateImpl extends _NoApiKyeSettingsState {
  _$NoApiKyeSettingsStateImpl() : super._();

  @override
  String toString() {
    return 'SettingsState.noApiKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoApiKyeSettingsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noApiKey,
    required TResult Function(String apiKey) inProgress,
    required TResult Function(String apiKey, List<Account> accounts) success,
    required TResult Function(String message, String apiKey) failed,
  }) {
    return noApiKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noApiKey,
    TResult? Function(String apiKey)? inProgress,
    TResult? Function(String apiKey, List<Account> accounts)? success,
    TResult? Function(String message, String apiKey)? failed,
  }) {
    return noApiKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noApiKey,
    TResult Function(String apiKey)? inProgress,
    TResult Function(String apiKey, List<Account> accounts)? success,
    TResult Function(String message, String apiKey)? failed,
    required TResult orElse(),
  }) {
    if (noApiKey != null) {
      return noApiKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoApiKyeSettingsState value) noApiKey,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_SuccessSettingsState value) success,
    required TResult Function(_FailedSettingsState value) failed,
  }) {
    return noApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_SuccessSettingsState value)? success,
    TResult? Function(_FailedSettingsState value)? failed,
  }) {
    return noApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_SuccessSettingsState value)? success,
    TResult Function(_FailedSettingsState value)? failed,
    required TResult orElse(),
  }) {
    if (noApiKey != null) {
      return noApiKey(this);
    }
    return orElse();
  }
}

abstract class _NoApiKyeSettingsState extends SettingsState {
  factory _NoApiKyeSettingsState() = _$NoApiKyeSettingsStateImpl;
  _NoApiKyeSettingsState._() : super._();
}

/// @nodoc
abstract class _$$InProgressSettingsStateImplCopyWith<$Res> {
  factory _$$InProgressSettingsStateImplCopyWith(
          _$InProgressSettingsStateImpl value,
          $Res Function(_$InProgressSettingsStateImpl) then) =
      __$$InProgressSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$InProgressSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$InProgressSettingsStateImpl>
    implements _$$InProgressSettingsStateImplCopyWith<$Res> {
  __$$InProgressSettingsStateImplCopyWithImpl(
      _$InProgressSettingsStateImpl _value,
      $Res Function(_$InProgressSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$InProgressSettingsStateImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InProgressSettingsStateImpl extends _InProgressSettingsState {
  _$InProgressSettingsStateImpl({required this.apiKey}) : super._();

  @override
  final String apiKey;

  @override
  String toString() {
    return 'SettingsState.inProgress(apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressSettingsStateImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressSettingsStateImplCopyWith<_$InProgressSettingsStateImpl>
      get copyWith => __$$InProgressSettingsStateImplCopyWithImpl<
          _$InProgressSettingsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noApiKey,
    required TResult Function(String apiKey) inProgress,
    required TResult Function(String apiKey, List<Account> accounts) success,
    required TResult Function(String message, String apiKey) failed,
  }) {
    return inProgress(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noApiKey,
    TResult? Function(String apiKey)? inProgress,
    TResult? Function(String apiKey, List<Account> accounts)? success,
    TResult? Function(String message, String apiKey)? failed,
  }) {
    return inProgress?.call(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noApiKey,
    TResult Function(String apiKey)? inProgress,
    TResult Function(String apiKey, List<Account> accounts)? success,
    TResult Function(String message, String apiKey)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoApiKyeSettingsState value) noApiKey,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_SuccessSettingsState value) success,
    required TResult Function(_FailedSettingsState value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_SuccessSettingsState value)? success,
    TResult? Function(_FailedSettingsState value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_SuccessSettingsState value)? success,
    TResult Function(_FailedSettingsState value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressSettingsState extends SettingsState {
  factory _InProgressSettingsState({required final String apiKey}) =
      _$InProgressSettingsStateImpl;
  _InProgressSettingsState._() : super._();

  String get apiKey;
  @JsonKey(ignore: true)
  _$$InProgressSettingsStateImplCopyWith<_$InProgressSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSettingsStateImplCopyWith<$Res> {
  factory _$$SuccessSettingsStateImplCopyWith(_$SuccessSettingsStateImpl value,
          $Res Function(_$SuccessSettingsStateImpl) then) =
      __$$SuccessSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKey, List<Account> accounts});
}

/// @nodoc
class __$$SuccessSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SuccessSettingsStateImpl>
    implements _$$SuccessSettingsStateImplCopyWith<$Res> {
  __$$SuccessSettingsStateImplCopyWithImpl(_$SuccessSettingsStateImpl _value,
      $Res Function(_$SuccessSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? accounts = null,
  }) {
    return _then(_$SuccessSettingsStateImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$SuccessSettingsStateImpl extends _SuccessSettingsState {
  _$SuccessSettingsStateImpl(
      {required this.apiKey, required final List<Account> accounts})
      : _accounts = accounts,
        super._();

  @override
  final String apiKey;
  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'SettingsState.success(apiKey: $apiKey, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSettingsStateImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, apiKey, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSettingsStateImplCopyWith<_$SuccessSettingsStateImpl>
      get copyWith =>
          __$$SuccessSettingsStateImplCopyWithImpl<_$SuccessSettingsStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noApiKey,
    required TResult Function(String apiKey) inProgress,
    required TResult Function(String apiKey, List<Account> accounts) success,
    required TResult Function(String message, String apiKey) failed,
  }) {
    return success(apiKey, accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noApiKey,
    TResult? Function(String apiKey)? inProgress,
    TResult? Function(String apiKey, List<Account> accounts)? success,
    TResult? Function(String message, String apiKey)? failed,
  }) {
    return success?.call(apiKey, accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noApiKey,
    TResult Function(String apiKey)? inProgress,
    TResult Function(String apiKey, List<Account> accounts)? success,
    TResult Function(String message, String apiKey)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(apiKey, accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoApiKyeSettingsState value) noApiKey,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_SuccessSettingsState value) success,
    required TResult Function(_FailedSettingsState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_SuccessSettingsState value)? success,
    TResult? Function(_FailedSettingsState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_SuccessSettingsState value)? success,
    TResult Function(_FailedSettingsState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessSettingsState extends SettingsState {
  factory _SuccessSettingsState(
      {required final String apiKey,
      required final List<Account> accounts}) = _$SuccessSettingsStateImpl;
  _SuccessSettingsState._() : super._();

  String get apiKey;
  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$SuccessSettingsStateImplCopyWith<_$SuccessSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedSettingsStateImplCopyWith<$Res> {
  factory _$$FailedSettingsStateImplCopyWith(_$FailedSettingsStateImpl value,
          $Res Function(_$FailedSettingsStateImpl) then) =
      __$$FailedSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String apiKey});
}

/// @nodoc
class __$$FailedSettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$FailedSettingsStateImpl>
    implements _$$FailedSettingsStateImplCopyWith<$Res> {
  __$$FailedSettingsStateImplCopyWithImpl(_$FailedSettingsStateImpl _value,
      $Res Function(_$FailedSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? apiKey = null,
  }) {
    return _then(_$FailedSettingsStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedSettingsStateImpl extends _FailedSettingsState {
  _$FailedSettingsStateImpl({required this.message, required this.apiKey})
      : super._();

  @override
  final String message;
  @override
  final String apiKey;

  @override
  String toString() {
    return 'SettingsState.failed(message: $message, apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedSettingsStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedSettingsStateImplCopyWith<_$FailedSettingsStateImpl> get copyWith =>
      __$$FailedSettingsStateImplCopyWithImpl<_$FailedSettingsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noApiKey,
    required TResult Function(String apiKey) inProgress,
    required TResult Function(String apiKey, List<Account> accounts) success,
    required TResult Function(String message, String apiKey) failed,
  }) {
    return failed(message, apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noApiKey,
    TResult? Function(String apiKey)? inProgress,
    TResult? Function(String apiKey, List<Account> accounts)? success,
    TResult? Function(String message, String apiKey)? failed,
  }) {
    return failed?.call(message, apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noApiKey,
    TResult Function(String apiKey)? inProgress,
    TResult Function(String apiKey, List<Account> accounts)? success,
    TResult Function(String message, String apiKey)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message, apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoApiKyeSettingsState value) noApiKey,
    required TResult Function(_InProgressSettingsState value) inProgress,
    required TResult Function(_SuccessSettingsState value) success,
    required TResult Function(_FailedSettingsState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult? Function(_InProgressSettingsState value)? inProgress,
    TResult? Function(_SuccessSettingsState value)? success,
    TResult? Function(_FailedSettingsState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoApiKyeSettingsState value)? noApiKey,
    TResult Function(_InProgressSettingsState value)? inProgress,
    TResult Function(_SuccessSettingsState value)? success,
    TResult Function(_FailedSettingsState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedSettingsState extends SettingsState {
  factory _FailedSettingsState(
      {required final String message,
      required final String apiKey}) = _$FailedSettingsStateImpl;
  _FailedSettingsState._() : super._();

  String get message;
  String get apiKey;
  @JsonKey(ignore: true)
  _$$FailedSettingsStateImplCopyWith<_$FailedSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
