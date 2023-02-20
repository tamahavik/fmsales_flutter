// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayEventCopyWith<$Res> {
  factory $TodayEventCopyWith(
          TodayEvent value, $Res Function(TodayEvent) then) =
      _$TodayEventCopyWithImpl<$Res, TodayEvent>;
}

/// @nodoc
class _$TodayEventCopyWithImpl<$Res, $Val extends TodayEvent>
    implements $TodayEventCopyWith<$Res> {
  _$TodayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TodayEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TodayEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TodayEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CancelTimerCopyWith<$Res> {
  factory _$$_CancelTimerCopyWith(
          _$_CancelTimer value, $Res Function(_$_CancelTimer) then) =
      __$$_CancelTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelTimerCopyWithImpl<$Res>
    extends _$TodayEventCopyWithImpl<$Res, _$_CancelTimer>
    implements _$$_CancelTimerCopyWith<$Res> {
  __$$_CancelTimerCopyWithImpl(
      _$_CancelTimer _value, $Res Function(_$_CancelTimer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelTimer implements _CancelTimer {
  const _$_CancelTimer();

  @override
  String toString() {
    return 'TodayEvent.cancelTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) {
    return cancelTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) {
    return cancelTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (cancelTimer != null) {
      return cancelTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return cancelTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return cancelTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (cancelTimer != null) {
      return cancelTimer(this);
    }
    return orElse();
  }
}

abstract class _CancelTimer implements TodayEvent {
  const factory _CancelTimer() = _$_CancelTimer;
}

/// @nodoc
abstract class _$$_LoadLeadsCopyWith<$Res> {
  factory _$$_LoadLeadsCopyWith(
          _$_LoadLeads value, $Res Function(_$_LoadLeads) then) =
      __$$_LoadLeadsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadLeadsCopyWithImpl<$Res>
    extends _$TodayEventCopyWithImpl<$Res, _$_LoadLeads>
    implements _$$_LoadLeadsCopyWith<$Res> {
  __$$_LoadLeadsCopyWithImpl(
      _$_LoadLeads _value, $Res Function(_$_LoadLeads) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadLeads implements _LoadLeads {
  const _$_LoadLeads();

  @override
  String toString() {
    return 'TodayEvent.loadLeads()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadLeads);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) {
    return loadLeads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) {
    return loadLeads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (loadLeads != null) {
      return loadLeads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return loadLeads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return loadLeads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (loadLeads != null) {
      return loadLeads(this);
    }
    return orElse();
  }
}

abstract class _LoadLeads implements TodayEvent {
  const factory _LoadLeads() = _$_LoadLeads;
}

/// @nodoc
abstract class _$$_SynchronizeCopyWith<$Res> {
  factory _$$_SynchronizeCopyWith(
          _$_Synchronize value, $Res Function(_$_Synchronize) then) =
      __$$_SynchronizeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SynchronizeCopyWithImpl<$Res>
    extends _$TodayEventCopyWithImpl<$Res, _$_Synchronize>
    implements _$$_SynchronizeCopyWith<$Res> {
  __$$_SynchronizeCopyWithImpl(
      _$_Synchronize _value, $Res Function(_$_Synchronize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Synchronize implements _Synchronize {
  const _$_Synchronize();

  @override
  String toString() {
    return 'TodayEvent.synchronize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Synchronize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) {
    return synchronize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) {
    return synchronize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (synchronize != null) {
      return synchronize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return synchronize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return synchronize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (synchronize != null) {
      return synchronize(this);
    }
    return orElse();
  }
}

abstract class _Synchronize implements TodayEvent {
  const factory _Synchronize() = _$_Synchronize;
}

/// @nodoc
abstract class _$$_PullToRefreshCopyWith<$Res> {
  factory _$$_PullToRefreshCopyWith(
          _$_PullToRefresh value, $Res Function(_$_PullToRefresh) then) =
      __$$_PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PullToRefreshCopyWithImpl<$Res>
    extends _$TodayEventCopyWithImpl<$Res, _$_PullToRefresh>
    implements _$$_PullToRefreshCopyWith<$Res> {
  __$$_PullToRefreshCopyWithImpl(
      _$_PullToRefresh _value, $Res Function(_$_PullToRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PullToRefresh implements _PullToRefresh {
  const _$_PullToRefresh();

  @override
  String toString() {
    return 'TodayEvent.pullToRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PullToRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cancelTimer,
    required TResult Function() loadLeads,
    required TResult Function() synchronize,
    required TResult Function() pullToRefresh,
  }) {
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cancelTimer,
    TResult? Function()? loadLeads,
    TResult? Function()? synchronize,
    TResult? Function()? pullToRefresh,
  }) {
    return pullToRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cancelTimer,
    TResult Function()? loadLeads,
    TResult Function()? synchronize,
    TResult Function()? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_LoadLeads value) loadLeads,
    required TResult Function(_Synchronize value) synchronize,
    required TResult Function(_PullToRefresh value) pullToRefresh,
  }) {
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_LoadLeads value)? loadLeads,
    TResult? Function(_Synchronize value)? synchronize,
    TResult? Function(_PullToRefresh value)? pullToRefresh,
  }) {
    return pullToRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_LoadLeads value)? loadLeads,
    TResult Function(_Synchronize value)? synchronize,
    TResult Function(_PullToRefresh value)? pullToRefresh,
    required TResult orElse(),
  }) {
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements TodayEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
mixin _$TodayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Leads> leads) success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Leads> leads)? success,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Leads> leads)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayStateCopyWith<$Res> {
  factory $TodayStateCopyWith(
          TodayState value, $Res Function(TodayState) then) =
      _$TodayStateCopyWithImpl<$Res, TodayState>;
}

/// @nodoc
class _$TodayStateCopyWithImpl<$Res, $Val extends TodayState>
    implements $TodayStateCopyWith<$Res> {
  _$TodayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TodayStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodayState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Leads> leads) success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Leads> leads)? success,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Leads> leads)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodayState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Leads> leads});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TodayStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leads = null,
  }) {
    return _then(_$_Success(
      null == leads
          ? _value._leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Leads>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<Leads> leads) : _leads = leads;

  final List<Leads> _leads;
  @override
  List<Leads> get leads {
    if (_leads is EqualUnmodifiableListView) return _leads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leads);
  }

  @override
  String toString() {
    return 'TodayState.success(leads: $leads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._leads, _leads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Leads> leads) success,
    required TResult Function() failed,
  }) {
    return success(leads);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Leads> leads)? success,
    TResult? Function()? failed,
  }) {
    return success?.call(leads);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Leads> leads)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(leads);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TodayState {
  const factory _Success(final List<Leads> leads) = _$_Success;

  List<Leads> get leads;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$TodayStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'TodayState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Leads> leads) success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Leads> leads)? success,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Leads> leads)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TodayState {
  const factory _Failed() = _$_Failed;
}
