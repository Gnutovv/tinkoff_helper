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
abstract class _$$_UpdatePortfolioEventCopyWith<$Res> {
  factory _$$_UpdatePortfolioEventCopyWith(_$_UpdatePortfolioEvent value, $Res Function(_$_UpdatePortfolioEvent) then) =
      __$$_UpdatePortfolioEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdatePortfolioEventCopyWithImpl<$Res> extends _$PortfolioEventCopyWithImpl<$Res, _$_UpdatePortfolioEvent>
    implements _$$_UpdatePortfolioEventCopyWith<$Res> {
  __$$_UpdatePortfolioEventCopyWithImpl(_$_UpdatePortfolioEvent _value, $Res Function(_$_UpdatePortfolioEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdatePortfolioEvent extends _UpdatePortfolioEvent {
  const _$_UpdatePortfolioEvent() : super._();

  @override
  String toString() {
    return 'PortfolioEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UpdatePortfolioEvent);
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
  const factory _UpdatePortfolioEvent() = _$_UpdatePortfolioEvent;
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
abstract class _$$_InitializedPortfolioStateCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$_InitializedPortfolioStateCopyWith(
          _$_InitializedPortfolioState value, $Res Function(_$_InitializedPortfolioState) then) =
      __$$_InitializedPortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$_InitializedPortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$_InitializedPortfolioState>
    implements _$$_InitializedPortfolioStateCopyWith<$Res> {
  __$$_InitializedPortfolioStateCopyWithImpl(
      _$_InitializedPortfolioState _value, $Res Function(_$_InitializedPortfolioState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
  }) {
    return _then(_$_InitializedPortfolioState(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
    ));
  }
}

/// @nodoc

class _$_InitializedPortfolioState extends _InitializedPortfolioState {
  _$_InitializedPortfolioState({this.portfolio}) : super._();

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
            other is _$_InitializedPortfolioState &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedPortfolioStateCopyWith<_$_InitializedPortfolioState> get copyWith =>
      __$$_InitializedPortfolioStateCopyWithImpl<_$_InitializedPortfolioState>(this, _$identity);

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
  factory _InitializedPortfolioState({final Portfolio? portfolio}) = _$_InitializedPortfolioState;
  _InitializedPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedPortfolioStateCopyWith<_$_InitializedPortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressPortfolioStateCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$_InProgressPortfolioStateCopyWith(
          _$_InProgressPortfolioState value, $Res Function(_$_InProgressPortfolioState) then) =
      __$$_InProgressPortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$_InProgressPortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$_InProgressPortfolioState>
    implements _$$_InProgressPortfolioStateCopyWith<$Res> {
  __$$_InProgressPortfolioStateCopyWithImpl(
      _$_InProgressPortfolioState _value, $Res Function(_$_InProgressPortfolioState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
  }) {
    return _then(_$_InProgressPortfolioState(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as Portfolio?,
    ));
  }
}

/// @nodoc

class _$_InProgressPortfolioState extends _InProgressPortfolioState {
  _$_InProgressPortfolioState({this.portfolio}) : super._();

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
            other is _$_InProgressPortfolioState &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressPortfolioStateCopyWith<_$_InProgressPortfolioState> get copyWith =>
      __$$_InProgressPortfolioStateCopyWithImpl<_$_InProgressPortfolioState>(this, _$identity);

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
  factory _InProgressPortfolioState({final Portfolio? portfolio}) = _$_InProgressPortfolioState;
  _InProgressPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressPortfolioStateCopyWith<_$_InProgressPortfolioState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorPortfolioStateCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$_ErrorPortfolioStateCopyWith(_$_ErrorPortfolioState value, $Res Function(_$_ErrorPortfolioState) then) =
      __$$_ErrorPortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Portfolio? portfolio, String message});

  @override
  $PortfolioCopyWith<$Res>? get portfolio;
}

/// @nodoc
class __$$_ErrorPortfolioStateCopyWithImpl<$Res> extends _$PortfolioStateCopyWithImpl<$Res, _$_ErrorPortfolioState>
    implements _$$_ErrorPortfolioStateCopyWith<$Res> {
  __$$_ErrorPortfolioStateCopyWithImpl(_$_ErrorPortfolioState _value, $Res Function(_$_ErrorPortfolioState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
    Object? message = null,
  }) {
    return _then(_$_ErrorPortfolioState(
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

class _$_ErrorPortfolioState extends _ErrorPortfolioState {
  _$_ErrorPortfolioState({this.portfolio, required this.message}) : super._();

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
            other is _$_ErrorPortfolioState &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portfolio, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorPortfolioStateCopyWith<_$_ErrorPortfolioState> get copyWith =>
      __$$_ErrorPortfolioStateCopyWithImpl<_$_ErrorPortfolioState>(this, _$identity);

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
  factory _ErrorPortfolioState({final Portfolio? portfolio, required final String message}) = _$_ErrorPortfolioState;
  _ErrorPortfolioState._() : super._();

  @override
  Portfolio? get portfolio;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorPortfolioStateCopyWith<_$_ErrorPortfolioState> get copyWith => throw _privateConstructorUsedError;
}
