// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpertSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertSettingsEvent value) init,
    required TResult Function(_UpdateBalancerExpertSettingsEvent value) updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertSettingsEvent value)? init,
    TResult? Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertSettingsEvent value)? init,
    TResult Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertSettingsEventCopyWith<$Res> {
  factory $ExpertSettingsEventCopyWith(ExpertSettingsEvent value, $Res Function(ExpertSettingsEvent) then) =
      _$ExpertSettingsEventCopyWithImpl<$Res, ExpertSettingsEvent>;
}

/// @nodoc
class _$ExpertSettingsEventCopyWithImpl<$Res, $Val extends ExpertSettingsEvent>
    implements $ExpertSettingsEventCopyWith<$Res> {
  _$ExpertSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitExpertSettingsEventCopyWith<$Res> {
  factory _$$_InitExpertSettingsEventCopyWith(
          _$_InitExpertSettingsEvent value, $Res Function(_$_InitExpertSettingsEvent) then) =
      __$$_InitExpertSettingsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InitExpertSettingsEventCopyWithImpl<$Res>
    extends _$ExpertSettingsEventCopyWithImpl<$Res, _$_InitExpertSettingsEvent>
    implements _$$_InitExpertSettingsEventCopyWith<$Res> {
  __$$_InitExpertSettingsEventCopyWithImpl(
      _$_InitExpertSettingsEvent _value, $Res Function(_$_InitExpertSettingsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InitExpertSettingsEvent(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StepsBalancerCopyWith<$Res> get balancer {
    return $StepsBalancerCopyWith<$Res>(_value.balancer, (value) {
      return _then(_value.copyWith(balancer: value));
    });
  }
}

/// @nodoc

class _$_InitExpertSettingsEvent extends _InitExpertSettingsEvent {
  const _$_InitExpertSettingsEvent({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertSettingsEvent.init(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitExpertSettingsEvent &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitExpertSettingsEventCopyWith<_$_InitExpertSettingsEvent> get copyWith =>
      __$$_InitExpertSettingsEventCopyWithImpl<_$_InitExpertSettingsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) {
    return init(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) {
    return init?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertSettingsEvent value) init,
    required TResult Function(_UpdateBalancerExpertSettingsEvent value) updateBalancer,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertSettingsEvent value)? init,
    TResult? Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertSettingsEvent value)? init,
    TResult Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitExpertSettingsEvent extends ExpertSettingsEvent {
  const factory _InitExpertSettingsEvent({required final StepsBalancer balancer}) = _$_InitExpertSettingsEvent;
  const _InitExpertSettingsEvent._() : super._();

  StepsBalancer get balancer;
  @JsonKey(ignore: true)
  _$$_InitExpertSettingsEventCopyWith<_$_InitExpertSettingsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBalancerExpertSettingsEventCopyWith<$Res> {
  factory _$$_UpdateBalancerExpertSettingsEventCopyWith(
          _$_UpdateBalancerExpertSettingsEvent value, $Res Function(_$_UpdateBalancerExpertSettingsEvent) then) =
      __$$_UpdateBalancerExpertSettingsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int>? stepsRateList, int? stocksAmount, double? balance});
}

/// @nodoc
class __$$_UpdateBalancerExpertSettingsEventCopyWithImpl<$Res>
    extends _$ExpertSettingsEventCopyWithImpl<$Res, _$_UpdateBalancerExpertSettingsEvent>
    implements _$$_UpdateBalancerExpertSettingsEventCopyWith<$Res> {
  __$$_UpdateBalancerExpertSettingsEventCopyWithImpl(
      _$_UpdateBalancerExpertSettingsEvent _value, $Res Function(_$_UpdateBalancerExpertSettingsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsRateList = freezed,
    Object? stocksAmount = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_UpdateBalancerExpertSettingsEvent(
      stepsRateList: freezed == stepsRateList
          ? _value._stepsRateList
          : stepsRateList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      stocksAmount: freezed == stocksAmount
          ? _value.stocksAmount
          : stocksAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_UpdateBalancerExpertSettingsEvent extends _UpdateBalancerExpertSettingsEvent {
  const _$_UpdateBalancerExpertSettingsEvent({final List<int>? stepsRateList, this.stocksAmount, this.balance})
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
  final double? balance;

  @override
  String toString() {
    return 'ExpertSettingsEvent.updateBalancer(stepsRateList: $stepsRateList, stocksAmount: $stocksAmount, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBalancerExpertSettingsEvent &&
            const DeepCollectionEquality().equals(other._stepsRateList, _stepsRateList) &&
            (identical(other.stocksAmount, stocksAmount) || other.stocksAmount == stocksAmount) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stepsRateList), stocksAmount, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBalancerExpertSettingsEventCopyWith<_$_UpdateBalancerExpertSettingsEvent> get copyWith =>
      __$$_UpdateBalancerExpertSettingsEventCopyWithImpl<_$_UpdateBalancerExpertSettingsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) init,
    required TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance) updateBalancer,
  }) {
    return updateBalancer(stepsRateList, stocksAmount, balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? init,
    TResult? Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
  }) {
    return updateBalancer?.call(stepsRateList, stocksAmount, balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? init,
    TResult Function(List<int>? stepsRateList, int? stocksAmount, double? balance)? updateBalancer,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(stepsRateList, stocksAmount, balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertSettingsEvent value) init,
    required TResult Function(_UpdateBalancerExpertSettingsEvent value) updateBalancer,
  }) {
    return updateBalancer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertSettingsEvent value)? init,
    TResult? Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
  }) {
    return updateBalancer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertSettingsEvent value)? init,
    TResult Function(_UpdateBalancerExpertSettingsEvent value)? updateBalancer,
    required TResult orElse(),
  }) {
    if (updateBalancer != null) {
      return updateBalancer(this);
    }
    return orElse();
  }
}

abstract class _UpdateBalancerExpertSettingsEvent extends ExpertSettingsEvent {
  const factory _UpdateBalancerExpertSettingsEvent(
      {final List<int>? stepsRateList,
      final int? stocksAmount,
      final double? balance}) = _$_UpdateBalancerExpertSettingsEvent;
  const _UpdateBalancerExpertSettingsEvent._() : super._();

  List<int>? get stepsRateList;
  int? get stocksAmount;
  double? get balance;
  @JsonKey(ignore: true)
  _$$_UpdateBalancerExpertSettingsEventCopyWith<_$_UpdateBalancerExpertSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpertSettingsState {
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertSettingsState value) initialized,
    required TResult Function(_InProgressExpertSettingsState value) inProgress,
    required TResult Function(_ErrorExpertSettingsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertSettingsState value)? initialized,
    TResult? Function(_InProgressExpertSettingsState value)? inProgress,
    TResult? Function(_ErrorExpertSettingsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertSettingsState value)? initialized,
    TResult Function(_InProgressExpertSettingsState value)? inProgress,
    TResult Function(_ErrorExpertSettingsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpertSettingsStateCopyWith<ExpertSettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertSettingsStateCopyWith<$Res> {
  factory $ExpertSettingsStateCopyWith(ExpertSettingsState value, $Res Function(ExpertSettingsState) then) =
      _$ExpertSettingsStateCopyWithImpl<$Res, ExpertSettingsState>;
  @useResult
  $Res call({StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class _$ExpertSettingsStateCopyWithImpl<$Res, $Val extends ExpertSettingsState>
    implements $ExpertSettingsStateCopyWith<$Res> {
  _$ExpertSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_value.copyWith(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StepsBalancerCopyWith<$Res> get balancer {
    return $StepsBalancerCopyWith<$Res>(_value.balancer, (value) {
      return _then(_value.copyWith(balancer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitializedExpertSettingsStateCopyWith<$Res> implements $ExpertSettingsStateCopyWith<$Res> {
  factory _$$_InitializedExpertSettingsStateCopyWith(
          _$_InitializedExpertSettingsState value, $Res Function(_$_InitializedExpertSettingsState) then) =
      __$$_InitializedExpertSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InitializedExpertSettingsStateCopyWithImpl<$Res>
    extends _$ExpertSettingsStateCopyWithImpl<$Res, _$_InitializedExpertSettingsState>
    implements _$$_InitializedExpertSettingsStateCopyWith<$Res> {
  __$$_InitializedExpertSettingsStateCopyWithImpl(
      _$_InitializedExpertSettingsState _value, $Res Function(_$_InitializedExpertSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InitializedExpertSettingsState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }
}

/// @nodoc

class _$_InitializedExpertSettingsState extends _InitializedExpertSettingsState {
  _$_InitializedExpertSettingsState({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertSettingsState.initialized(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedExpertSettingsState &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedExpertSettingsStateCopyWith<_$_InitializedExpertSettingsState> get copyWith =>
      __$$_InitializedExpertSettingsStateCopyWithImpl<_$_InitializedExpertSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return initialized(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return initialized?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertSettingsState value) initialized,
    required TResult Function(_InProgressExpertSettingsState value) inProgress,
    required TResult Function(_ErrorExpertSettingsState value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertSettingsState value)? initialized,
    TResult? Function(_InProgressExpertSettingsState value)? inProgress,
    TResult? Function(_ErrorExpertSettingsState value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertSettingsState value)? initialized,
    TResult Function(_InProgressExpertSettingsState value)? inProgress,
    TResult Function(_ErrorExpertSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _InitializedExpertSettingsState extends ExpertSettingsState {
  factory _InitializedExpertSettingsState({required final StepsBalancer balancer}) = _$_InitializedExpertSettingsState;
  _InitializedExpertSettingsState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedExpertSettingsStateCopyWith<_$_InitializedExpertSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressExpertSettingsStateCopyWith<$Res> implements $ExpertSettingsStateCopyWith<$Res> {
  factory _$$_InProgressExpertSettingsStateCopyWith(
          _$_InProgressExpertSettingsState value, $Res Function(_$_InProgressExpertSettingsState) then) =
      __$$_InProgressExpertSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InProgressExpertSettingsStateCopyWithImpl<$Res>
    extends _$ExpertSettingsStateCopyWithImpl<$Res, _$_InProgressExpertSettingsState>
    implements _$$_InProgressExpertSettingsStateCopyWith<$Res> {
  __$$_InProgressExpertSettingsStateCopyWithImpl(
      _$_InProgressExpertSettingsState _value, $Res Function(_$_InProgressExpertSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_InProgressExpertSettingsState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
    ));
  }
}

/// @nodoc

class _$_InProgressExpertSettingsState extends _InProgressExpertSettingsState {
  _$_InProgressExpertSettingsState({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertSettingsState.inProgress(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressExpertSettingsState &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressExpertSettingsStateCopyWith<_$_InProgressExpertSettingsState> get copyWith =>
      __$$_InProgressExpertSettingsStateCopyWithImpl<_$_InProgressExpertSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return inProgress(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return inProgress?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertSettingsState value) initialized,
    required TResult Function(_InProgressExpertSettingsState value) inProgress,
    required TResult Function(_ErrorExpertSettingsState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertSettingsState value)? initialized,
    TResult? Function(_InProgressExpertSettingsState value)? inProgress,
    TResult? Function(_ErrorExpertSettingsState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertSettingsState value)? initialized,
    TResult Function(_InProgressExpertSettingsState value)? inProgress,
    TResult Function(_ErrorExpertSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressExpertSettingsState extends ExpertSettingsState {
  factory _InProgressExpertSettingsState({required final StepsBalancer balancer}) = _$_InProgressExpertSettingsState;
  _InProgressExpertSettingsState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressExpertSettingsStateCopyWith<_$_InProgressExpertSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorExpertSettingsStateCopyWith<$Res> implements $ExpertSettingsStateCopyWith<$Res> {
  factory _$$_ErrorExpertSettingsStateCopyWith(
          _$_ErrorExpertSettingsState value, $Res Function(_$_ErrorExpertSettingsState) then) =
      __$$_ErrorExpertSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer, String message});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_ErrorExpertSettingsStateCopyWithImpl<$Res>
    extends _$ExpertSettingsStateCopyWithImpl<$Res, _$_ErrorExpertSettingsState>
    implements _$$_ErrorExpertSettingsStateCopyWith<$Res> {
  __$$_ErrorExpertSettingsStateCopyWithImpl(
      _$_ErrorExpertSettingsState _value, $Res Function(_$_ErrorExpertSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
    Object? message = null,
  }) {
    return _then(_$_ErrorExpertSettingsState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorExpertSettingsState extends _ErrorExpertSettingsState {
  _$_ErrorExpertSettingsState({required this.balancer, required this.message}) : super._();

  @override
  final StepsBalancer balancer;
  @override
  final String message;

  @override
  String toString() {
    return 'ExpertSettingsState.error(balancer: $balancer, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorExpertSettingsState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorExpertSettingsStateCopyWith<_$_ErrorExpertSettingsState> get copyWith =>
      __$$_ErrorExpertSettingsStateCopyWithImpl<_$_ErrorExpertSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer) initialized,
    required TResult Function(StepsBalancer balancer) inProgress,
    required TResult Function(StepsBalancer balancer, String message) error,
  }) {
    return error(balancer, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer)? initialized,
    TResult? Function(StepsBalancer balancer)? inProgress,
    TResult? Function(StepsBalancer balancer, String message)? error,
  }) {
    return error?.call(balancer, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer)? initialized,
    TResult Function(StepsBalancer balancer)? inProgress,
    TResult Function(StepsBalancer balancer, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(balancer, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedExpertSettingsState value) initialized,
    required TResult Function(_InProgressExpertSettingsState value) inProgress,
    required TResult Function(_ErrorExpertSettingsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedExpertSettingsState value)? initialized,
    TResult? Function(_InProgressExpertSettingsState value)? inProgress,
    TResult? Function(_ErrorExpertSettingsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedExpertSettingsState value)? initialized,
    TResult Function(_InProgressExpertSettingsState value)? inProgress,
    TResult Function(_ErrorExpertSettingsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorExpertSettingsState extends ExpertSettingsState {
  factory _ErrorExpertSettingsState({required final StepsBalancer balancer, required final String message}) =
      _$_ErrorExpertSettingsState;
  _ErrorExpertSettingsState._() : super._();

  @override
  StepsBalancer get balancer;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorExpertSettingsStateCopyWith<_$_ErrorExpertSettingsState> get copyWith => throw _privateConstructorUsedError;
}
