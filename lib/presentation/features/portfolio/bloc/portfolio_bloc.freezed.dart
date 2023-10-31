// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePortfolioEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePortfolioEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePortfolioEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioEventCopyWith<$Res> {
  factory $PortfolioEventCopyWith(PortfolioEvent value, $Res Function(PortfolioEvent) then) =
      _$PortfolioEventCopyWithImpl<$Res, PortfolioEvent>;
}

/// @nodoc
class _$PortfolioEventCopyWithImpl<$Res, $Val extends PortfolioEvent> implements $PortfolioEventCopyWith<$Res> {
  _$PortfolioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdatePortfolioEventImplCopyWith<$Res> {
  factory _$$UpdatePortfolioEventImplCopyWith(
          _$UpdatePortfolioEventImpl value, $Res Function(_$UpdatePortfolioEventImpl) then) =
      __$$UpdatePortfolioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePortfolioEventImplCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$UpdatePortfolioEventImpl>
    implements _$$UpdatePortfolioEventImplCopyWith<$Res> {
  __$$UpdatePortfolioEventImplCopyWithImpl(
      _$UpdatePortfolioEventImpl _value, $Res Function(_$UpdatePortfolioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePortfolioEventImpl extends _UpdatePortfolioEvent {
  const _$UpdatePortfolioEventImpl() : super._();

  @override
  String toString() {
    return 'PortfolioEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UpdatePortfolioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePortfolioEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePortfolioEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePortfolioEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdatePortfolioEvent extends PortfolioEvent {
  const factory _UpdatePortfolioEvent() = _$UpdatePortfolioEventImpl;
  const _UpdatePortfolioEvent._() : super._();
}

/// @nodoc
mixin _$PortfolioState {
  Portfolio? get portfolio => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Portfolio? portfolio) initialized,
    required TResult Function(Portfolio? portfolio) inProgress,
    required TResult Function(Portfolio? portfolio, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Portfolio? portfolio)? initialized,
    TResult? Function(Portfolio? portfolio)? inProgress,
    TResult? Function(Portfolio? portfolio, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Portfolio? portfolio)? initialized,
    TResult Function(Portfolio? portfolio)? inProgress,
    TResult Function(Portfolio? portfolio, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedPortfolioState value) initialized,
    required TResult Function(_InProgressPortfolioState value) inProgress,
    required TResult Function(_ErrorPortfolioState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedPortfolioState value)? initialized,
    TResult? Function(_InProgressPortfolioState value)? inProgress,
    TResult? Function(_ErrorPortfolioState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedPortfolioState value)? initialized,
    TResult Function(_InProgressPortfolioState value)? inProgress,
    TResult Function(_ErrorPortfolioState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call({Portfolio? portfolio});

  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res, $Val extends PortfolioState> implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
  }) {
    return _then(_value.copyWith(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PortfolioCopyWith<$Res>? get portfolio {
    if (_value.portfolio == null) {
      return null;
    }

    return $PortfolioCopyWith<$Res>(_value.portfolio!, (value) {
      return _then(_value.copyWith(portfolio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitializedPortfolioStateImplCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$InitializedPortfolioStateImplCopyWith(
          _$InitializedPortfolioStateImpl value, $Res Function(_$InitializedPortfolioStateImpl) then) =
      __$$InitializedPortfolioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$InitializedPortfolioStateImplCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$InitializedPortfolioStateImpl>
    implements _$$InitializedPortfolioStateImplCopyWith<$Res> {
  __$$InitializedPortfolioStateImplCopyWithImpl(
      _$InitializedPortfolioStateImpl _value, $Res Function(_$InitializedPortfolioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
  }) {
    return _then(_$InitializedPortfolioStateImpl(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
    ));
  }
}

/// @nodoc

class _$InitializedPortfolioStateImpl extends _InitializedPortfolioState {
  _$InitializedPortfolioStateImpl({this.portfolio}) : super._();

  @override
  final Portfolio? portfolio;

  @override
  String toString() {
    return 'PortfolioState.initialized(portfolio: $portfolio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedPortfolioStateImpl &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedPortfolioStateImplCopyWith<_$InitializedPortfolioStateImpl> get copyWith =>
      __$$InitializedPortfolioStateImplCopyWithImpl<_$InitializedPortfolioStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Portfolio? portfolio) initialized,
    required TResult Function(Portfolio? portfolio) inProgress,
    required TResult Function(Portfolio? portfolio, String message) error,
  }) {
    return initialized(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Portfolio? portfolio)? initialized,
    TResult? Function(Portfolio? portfolio)? inProgress,
    TResult? Function(Portfolio? portfolio, String message)? error,
  }) {
    return initialized?.call(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Portfolio? portfolio)? initialized,
    TResult Function(Portfolio? portfolio)? inProgress,
    TResult Function(Portfolio? portfolio, String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(portfolio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedPortfolioState value) initialized,
    required TResult Function(_InProgressPortfolioState value) inProgress,
    required TResult Function(_ErrorPortfolioState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedPortfolioState value)? initialized,
    TResult? Function(_InProgressPortfolioState value)? inProgress,
    TResult? Function(_ErrorPortfolioState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedPortfolioState value)? initialized,
    TResult Function(_InProgressPortfolioState value)? inProgress,
    TResult Function(_ErrorPortfolioState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedPortfolioState extends PortfolioState {
  factory _InitializedPortfolioState({final Portfolio? portfolio}) = _$InitializedPortfolioStateImpl;
  _InitializedPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  @override
  @JsonKey(ignore: true)
  _$$InitializedPortfolioStateImplCopyWith<_$InitializedPortfolioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressPortfolioStateImplCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$InProgressPortfolioStateImplCopyWith(
          _$InProgressPortfolioStateImpl value, $Res Function(_$InProgressPortfolioStateImpl) then) =
      __$$InProgressPortfolioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$InProgressPortfolioStateImplCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$InProgressPortfolioStateImpl>
    implements _$$InProgressPortfolioStateImplCopyWith<$Res> {
  __$$InProgressPortfolioStateImplCopyWithImpl(
      _$InProgressPortfolioStateImpl _value, $Res Function(_$InProgressPortfolioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
  }) {
    return _then(_$InProgressPortfolioStateImpl(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
    ));
  }
}

/// @nodoc

class _$InProgressPortfolioStateImpl extends _InProgressPortfolioState {
  _$InProgressPortfolioStateImpl({this.portfolio}) : super._();

  @override
  final Portfolio? portfolio;

  @override
  String toString() {
    return 'PortfolioState.inProgress(portfolio: $portfolio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressPortfolioStateImpl &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressPortfolioStateImplCopyWith<_$InProgressPortfolioStateImpl> get copyWith =>
      __$$InProgressPortfolioStateImplCopyWithImpl<_$InProgressPortfolioStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Portfolio? portfolio) initialized,
    required TResult Function(Portfolio? portfolio) inProgress,
    required TResult Function(Portfolio? portfolio, String message) error,
  }) {
    return inProgress(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Portfolio? portfolio)? initialized,
    TResult? Function(Portfolio? portfolio)? inProgress,
    TResult? Function(Portfolio? portfolio, String message)? error,
  }) {
    return inProgress?.call(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Portfolio? portfolio)? initialized,
    TResult Function(Portfolio? portfolio)? inProgress,
    TResult Function(Portfolio? portfolio, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(portfolio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedPortfolioState value) initialized,
    required TResult Function(_InProgressPortfolioState value) inProgress,
    required TResult Function(_ErrorPortfolioState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedPortfolioState value)? initialized,
    TResult? Function(_InProgressPortfolioState value)? inProgress,
    TResult? Function(_ErrorPortfolioState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedPortfolioState value)? initialized,
    TResult Function(_InProgressPortfolioState value)? inProgress,
    TResult Function(_ErrorPortfolioState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressPortfolioState extends PortfolioState {
  factory _InProgressPortfolioState({final Portfolio? portfolio}) = _$InProgressPortfolioStateImpl;
  _InProgressPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  @override
  @JsonKey(ignore: true)
  _$$InProgressPortfolioStateImplCopyWith<_$InProgressPortfolioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorPortfolioStateImplCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$ErrorPortfolioStateImplCopyWith(
          _$ErrorPortfolioStateImpl value, $Res Function(_$ErrorPortfolioStateImpl) then) =
      __$$ErrorPortfolioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio, String message});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$ErrorPortfolioStateImplCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$ErrorPortfolioStateImpl>
    implements _$$ErrorPortfolioStateImplCopyWith<$Res> {
  __$$ErrorPortfolioStateImplCopyWithImpl(
      _$ErrorPortfolioStateImpl _value, $Res Function(_$ErrorPortfolioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
    Object? message = null,
  }) {
    return _then(_$ErrorPortfolioStateImpl(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorPortfolioStateImpl extends _ErrorPortfolioState {
  _$ErrorPortfolioStateImpl({this.portfolio, required this.message}) : super._();

  @override
  final Portfolio? portfolio;
  @override
  final String message;

  @override
  String toString() {
    return 'PortfolioState.error(portfolio: $portfolio, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPortfolioStateImpl &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPortfolioStateImplCopyWith<_$ErrorPortfolioStateImpl> get copyWith =>
      __$$ErrorPortfolioStateImplCopyWithImpl<_$ErrorPortfolioStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Portfolio? portfolio) initialized,
    required TResult Function(Portfolio? portfolio) inProgress,
    required TResult Function(Portfolio? portfolio, String message) error,
  }) {
    return error(portfolio, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Portfolio? portfolio)? initialized,
    TResult? Function(Portfolio? portfolio)? inProgress,
    TResult? Function(Portfolio? portfolio, String message)? error,
  }) {
    return error?.call(portfolio, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Portfolio? portfolio)? initialized,
    TResult Function(Portfolio? portfolio)? inProgress,
    TResult Function(Portfolio? portfolio, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(portfolio, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedPortfolioState value) initialized,
    required TResult Function(_InProgressPortfolioState value) inProgress,
    required TResult Function(_ErrorPortfolioState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedPortfolioState value)? initialized,
    TResult? Function(_InProgressPortfolioState value)? inProgress,
    TResult? Function(_ErrorPortfolioState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedPortfolioState value)? initialized,
    TResult Function(_InProgressPortfolioState value)? inProgress,
    TResult Function(_ErrorPortfolioState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPortfolioState extends PortfolioState {
  factory _ErrorPortfolioState({final Portfolio? portfolio, required final String message}) = _$ErrorPortfolioStateImpl;
  _ErrorPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorPortfolioStateImplCopyWith<_$ErrorPortfolioStateImpl> get copyWith => throw _privateConstructorUsedError;
}
