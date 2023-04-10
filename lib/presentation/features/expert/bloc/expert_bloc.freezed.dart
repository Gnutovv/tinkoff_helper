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
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
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
  $Res call({StepsBalancer balancer, List<String> expertPositions});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_InitExpertEventCopyWithImpl<$Res> extends _$ExpertEventCopyWithImpl<$Res, _$_InitExpertEvent>
    implements _$$_InitExpertEventCopyWith<$Res> {
  __$$_InitExpertEventCopyWithImpl(_$_InitExpertEvent _value, $Res Function(_$_InitExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
    Object? expertPositions = null,
  }) {
    return _then(_$_InitExpertEvent(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      expertPositions: null == expertPositions
          ? _value._expertPositions
          : expertPositions // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$_InitExpertEvent extends _InitExpertEvent {
  const _$_InitExpertEvent({required this.balancer, required final List<String> expertPositions})
      : _expertPositions = expertPositions,
        super._();

  @override
  final StepsBalancer balancer;
  final List<String> _expertPositions;
  @override
  List<String> get expertPositions {
    if (_expertPositions is EqualUnmodifiableListView) return _expertPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expertPositions);
  }

  @override
  String toString() {
    return 'ExpertEvent.init(balancer: $balancer, expertPositions: $expertPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitExpertEvent &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._expertPositions, _expertPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_expertPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith =>
      __$$_InitExpertEventCopyWithImpl<_$_InitExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) {
    return init(balancer, expertPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) {
    return init?.call(balancer, expertPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(balancer, expertPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitExpertEvent extends ExpertEvent {
  const factory _InitExpertEvent({required final StepsBalancer balancer, required final List<String> expertPositions}) =
      _$_InitExpertEvent;
  const _InitExpertEvent._() : super._();

  StepsBalancer get balancer;
  List<String> get expertPositions;
  @JsonKey(ignore: true)
  _$$_InitExpertEventCopyWith<_$_InitExpertEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CalculateNewBalancerExpertEventCopyWith<$Res> {
  factory _$$_CalculateNewBalancerExpertEventCopyWith(
          _$_CalculateNewBalancerExpertEvent value, $Res Function(_$_CalculateNewBalancerExpertEvent) then) =
      __$$_CalculateNewBalancerExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({StepsBalancer balancer});

  $StepsBalancerCopyWith<$Res> get balancer;
}

/// @nodoc
class __$$_CalculateNewBalancerExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_CalculateNewBalancerExpertEvent>
    implements _$$_CalculateNewBalancerExpertEventCopyWith<$Res> {
  __$$_CalculateNewBalancerExpertEventCopyWithImpl(
      _$_CalculateNewBalancerExpertEvent _value, $Res Function(_$_CalculateNewBalancerExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancer = null,
  }) {
    return _then(_$_CalculateNewBalancerExpertEvent(
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

class _$_CalculateNewBalancerExpertEvent extends _CalculateNewBalancerExpertEvent {
  const _$_CalculateNewBalancerExpertEvent({required this.balancer}) : super._();

  @override
  final StepsBalancer balancer;

  @override
  String toString() {
    return 'ExpertEvent.calculateNewBalancer(balancer: $balancer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculateNewBalancerExpertEvent &&
            (identical(other.balancer, balancer) || other.balancer == balancer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculateNewBalancerExpertEventCopyWith<_$_CalculateNewBalancerExpertEvent> get copyWith =>
      __$$_CalculateNewBalancerExpertEventCopyWithImpl<_$_CalculateNewBalancerExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) {
    return calculateNewBalancer(balancer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) {
    return calculateNewBalancer?.call(balancer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) {
    if (calculateNewBalancer != null) {
      return calculateNewBalancer(balancer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) {
    return calculateNewBalancer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) {
    return calculateNewBalancer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
    required TResult orElse(),
  }) {
    if (calculateNewBalancer != null) {
      return calculateNewBalancer(this);
    }
    return orElse();
  }
}

abstract class _CalculateNewBalancerExpertEvent extends ExpertEvent {
  const factory _CalculateNewBalancerExpertEvent({required final StepsBalancer balancer}) =
      _$_CalculateNewBalancerExpertEvent;
  const _CalculateNewBalancerExpertEvent._() : super._();

  StepsBalancer get balancer;
  @JsonKey(ignore: true)
  _$$_CalculateNewBalancerExpertEventCopyWith<_$_CalculateNewBalancerExpertEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateExpertEventCopyWith<$Res> {
  factory _$$_UpdateExpertEventCopyWith(_$_UpdateExpertEvent value, $Res Function(_$_UpdateExpertEvent) then) =
      __$$_UpdateExpertEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> expertPositions});
}

/// @nodoc
class __$$_UpdateExpertEventCopyWithImpl<$Res> extends _$ExpertEventCopyWithImpl<$Res, _$_UpdateExpertEvent>
    implements _$$_UpdateExpertEventCopyWith<$Res> {
  __$$_UpdateExpertEventCopyWithImpl(_$_UpdateExpertEvent _value, $Res Function(_$_UpdateExpertEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertPositions = null,
  }) {
    return _then(_$_UpdateExpertEvent(
      expertPositions: null == expertPositions
          ? _value._expertPositions
          : expertPositions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_UpdateExpertEvent extends _UpdateExpertEvent {
  const _$_UpdateExpertEvent({required final List<String> expertPositions})
      : _expertPositions = expertPositions,
        super._();

  final List<String> _expertPositions;
  @override
  List<String> get expertPositions {
    if (_expertPositions is EqualUnmodifiableListView) return _expertPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expertPositions);
  }

  @override
  String toString() {
    return 'ExpertEvent.update(expertPositions: $expertPositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateExpertEvent &&
            const DeepCollectionEquality().equals(other._expertPositions, _expertPositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_expertPositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateExpertEventCopyWith<_$_UpdateExpertEvent> get copyWith =>
      __$$_UpdateExpertEventCopyWithImpl<_$_UpdateExpertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) {
    return update(expertPositions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) {
    return update?.call(expertPositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(expertPositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateExpertEvent extends ExpertEvent {
  const factory _UpdateExpertEvent({required final List<String> expertPositions}) = _$_UpdateExpertEvent;
  const _UpdateExpertEvent._() : super._();

  List<String> get expertPositions;
  @JsonKey(ignore: true)
  _$$_UpdateExpertEventCopyWith<_$_UpdateExpertEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DoRecommendExpertEventCopyWith<$Res> {
  factory _$$_DoRecommendExpertEventCopyWith(
          _$_DoRecommendExpertEvent value, $Res Function(_$_DoRecommendExpertEvent) then) =
      __$$_DoRecommendExpertEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoRecommendExpertEventCopyWithImpl<$Res> extends _$ExpertEventCopyWithImpl<$Res, _$_DoRecommendExpertEvent>
    implements _$$_DoRecommendExpertEventCopyWith<$Res> {
  __$$_DoRecommendExpertEventCopyWithImpl(
      _$_DoRecommendExpertEvent _value, $Res Function(_$_DoRecommendExpertEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DoRecommendExpertEvent extends _DoRecommendExpertEvent {
  const _$_DoRecommendExpertEvent() : super._();

  @override
  String toString() {
    return 'ExpertEvent.doRecommend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_DoRecommendExpertEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) {
    return doRecommend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) {
    return doRecommend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) {
    if (doRecommend != null) {
      return doRecommend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) {
    return doRecommend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) {
    return doRecommend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
    required TResult orElse(),
  }) {
    if (doRecommend != null) {
      return doRecommend(this);
    }
    return orElse();
  }
}

abstract class _DoRecommendExpertEvent extends ExpertEvent {
  const factory _DoRecommendExpertEvent() = _$_DoRecommendExpertEvent;
  const _DoRecommendExpertEvent._() : super._();
}

/// @nodoc
abstract class _$$_DoAllRecommendsExpertEventCopyWith<$Res> {
  factory _$$_DoAllRecommendsExpertEventCopyWith(
          _$_DoAllRecommendsExpertEvent value, $Res Function(_$_DoAllRecommendsExpertEvent) then) =
      __$$_DoAllRecommendsExpertEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoAllRecommendsExpertEventCopyWithImpl<$Res>
    extends _$ExpertEventCopyWithImpl<$Res, _$_DoAllRecommendsExpertEvent>
    implements _$$_DoAllRecommendsExpertEventCopyWith<$Res> {
  __$$_DoAllRecommendsExpertEventCopyWithImpl(
      _$_DoAllRecommendsExpertEvent _value, $Res Function(_$_DoAllRecommendsExpertEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DoAllRecommendsExpertEvent extends _DoAllRecommendsExpertEvent {
  const _$_DoAllRecommendsExpertEvent() : super._();

  @override
  String toString() {
    return 'ExpertEvent.doAllRecommends()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_DoAllRecommendsExpertEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> expertPositions) init,
    required TResult Function(StepsBalancer balancer) calculateNewBalancer,
    required TResult Function(List<String> expertPositions) update,
    required TResult Function() doRecommend,
    required TResult Function() doAllRecommends,
  }) {
    return doAllRecommends();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult? Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult? Function(List<String> expertPositions)? update,
    TResult? Function()? doRecommend,
    TResult? Function()? doAllRecommends,
  }) {
    return doAllRecommends?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> expertPositions)? init,
    TResult Function(StepsBalancer balancer)? calculateNewBalancer,
    TResult Function(List<String> expertPositions)? update,
    TResult Function()? doRecommend,
    TResult Function()? doAllRecommends,
    required TResult orElse(),
  }) {
    if (doAllRecommends != null) {
      return doAllRecommends();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitExpertEvent value) init,
    required TResult Function(_CalculateNewBalancerExpertEvent value) calculateNewBalancer,
    required TResult Function(_UpdateExpertEvent value) update,
    required TResult Function(_DoRecommendExpertEvent value) doRecommend,
    required TResult Function(_DoAllRecommendsExpertEvent value) doAllRecommends,
  }) {
    return doAllRecommends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitExpertEvent value)? init,
    TResult? Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult? Function(_UpdateExpertEvent value)? update,
    TResult? Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult? Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
  }) {
    return doAllRecommends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitExpertEvent value)? init,
    TResult Function(_CalculateNewBalancerExpertEvent value)? calculateNewBalancer,
    TResult Function(_UpdateExpertEvent value)? update,
    TResult Function(_DoRecommendExpertEvent value)? doRecommend,
    TResult Function(_DoAllRecommendsExpertEvent value)? doAllRecommends,
    required TResult orElse(),
  }) {
    if (doAllRecommends != null) {
      return doAllRecommends(this);
    }
    return orElse();
  }
}

abstract class _DoAllRecommendsExpertEvent extends ExpertEvent {
  const factory _DoAllRecommendsExpertEvent() = _$_DoAllRecommendsExpertEvent;
  const _DoAllRecommendsExpertEvent._() : super._();
}

/// @nodoc
mixin _$ExpertState {
  StepsBalancer get balancer => throw _privateConstructorUsedError;
  List<String> get positions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> positions) initialized,
    required TResult Function(StepsBalancer balancer, List<String> positions) inProgress,
    required TResult Function(StepsBalancer balancer, List<String> positions, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult? Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult? Function(StepsBalancer balancer, List<String> positions, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult Function(StepsBalancer balancer, List<String> positions, String message)? error,
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
  $Res call({StepsBalancer balancer, List<String> positions});

  $StepsBalancerCopyWith<$Res> get balancer;
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
    Object? positions = null,
  }) {
    return _then(_value.copyWith(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_InitializedExpertStateCopyWith<$Res> implements $ExpertStateCopyWith<$Res> {
  factory _$$_InitializedExpertStateCopyWith(
          _$_InitializedExpertState value, $Res Function(_$_InitializedExpertState) then) =
      __$$_InitializedExpertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepsBalancer balancer, List<String> positions});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
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
    Object? positions = null,
  }) {
    return _then(_$_InitializedExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_InitializedExpertState extends _InitializedExpertState {
  _$_InitializedExpertState({required this.balancer, required final List<String> positions})
      : _positions = positions,
        super._();

  @override
  final StepsBalancer balancer;
  final List<String> _positions;
  @override
  List<String> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'ExpertState.initialized(balancer: $balancer, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializedExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._positions, _positions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_positions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedExpertStateCopyWith<_$_InitializedExpertState> get copyWith =>
      __$$_InitializedExpertStateCopyWithImpl<_$_InitializedExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> positions) initialized,
    required TResult Function(StepsBalancer balancer, List<String> positions) inProgress,
    required TResult Function(StepsBalancer balancer, List<String> positions, String message) error,
  }) {
    return initialized(balancer, positions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult? Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult? Function(StepsBalancer balancer, List<String> positions, String message)? error,
  }) {
    return initialized?.call(balancer, positions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult Function(StepsBalancer balancer, List<String> positions, String message)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(balancer, positions);
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
  factory _InitializedExpertState({required final StepsBalancer balancer, required final List<String> positions}) =
      _$_InitializedExpertState;
  _InitializedExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  List<String> get positions;
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
  $Res call({StepsBalancer balancer, List<String> positions});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
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
    Object? positions = null,
  }) {
    return _then(_$_InProgressExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_InProgressExpertState extends _InProgressExpertState {
  _$_InProgressExpertState({required this.balancer, required final List<String> positions})
      : _positions = positions,
        super._();

  @override
  final StepsBalancer balancer;
  final List<String> _positions;
  @override
  List<String> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'ExpertState.inProgress(balancer: $balancer, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._positions, _positions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_positions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressExpertStateCopyWith<_$_InProgressExpertState> get copyWith =>
      __$$_InProgressExpertStateCopyWithImpl<_$_InProgressExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> positions) initialized,
    required TResult Function(StepsBalancer balancer, List<String> positions) inProgress,
    required TResult Function(StepsBalancer balancer, List<String> positions, String message) error,
  }) {
    return inProgress(balancer, positions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult? Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult? Function(StepsBalancer balancer, List<String> positions, String message)? error,
  }) {
    return inProgress?.call(balancer, positions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult Function(StepsBalancer balancer, List<String> positions, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(balancer, positions);
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
  factory _InProgressExpertState({required final StepsBalancer balancer, required final List<String> positions}) =
      _$_InProgressExpertState;
  _InProgressExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  List<String> get positions;
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
  $Res call({StepsBalancer balancer, List<String> positions, String message});

  @override
  $StepsBalancerCopyWith<$Res> get balancer;
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
    Object? positions = null,
    Object? message = null,
  }) {
    return _then(_$_ErrorExpertState(
      balancer: null == balancer
          ? _value.balancer
          : balancer // ignore: cast_nullable_to_non_nullable
              as StepsBalancer,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorExpertState extends _ErrorExpertState {
  _$_ErrorExpertState({required this.balancer, required final List<String> positions, required this.message})
      : _positions = positions,
        super._();

  @override
  final StepsBalancer balancer;
  final List<String> _positions;
  @override
  List<String> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'ExpertState.error(balancer: $balancer, positions: $positions, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorExpertState &&
            (identical(other.balancer, balancer) || other.balancer == balancer) &&
            const DeepCollectionEquality().equals(other._positions, _positions) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancer, const DeepCollectionEquality().hash(_positions), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith =>
      __$$_ErrorExpertStateCopyWithImpl<_$_ErrorExpertState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StepsBalancer balancer, List<String> positions) initialized,
    required TResult Function(StepsBalancer balancer, List<String> positions) inProgress,
    required TResult Function(StepsBalancer balancer, List<String> positions, String message) error,
  }) {
    return error(balancer, positions, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult? Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult? Function(StepsBalancer balancer, List<String> positions, String message)? error,
  }) {
    return error?.call(balancer, positions, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StepsBalancer balancer, List<String> positions)? initialized,
    TResult Function(StepsBalancer balancer, List<String> positions)? inProgress,
    TResult Function(StepsBalancer balancer, List<String> positions, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(balancer, positions, message);
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
      required final List<String> positions,
      required final String message}) = _$_ErrorExpertState;
  _ErrorExpertState._() : super._();

  @override
  StepsBalancer get balancer;
  @override
  List<String> get positions;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorExpertStateCopyWith<_$_ErrorExpertState> get copyWith => throw _privateConstructorUsedError;
}
