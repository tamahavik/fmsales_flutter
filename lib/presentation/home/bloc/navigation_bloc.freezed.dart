// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BottomAppBarEnums index) homeMenu,
    required TResult Function(BottomAppBarEnums index) historyMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BottomAppBarEnums index)? homeMenu,
    TResult? Function(BottomAppBarEnums index)? historyMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BottomAppBarEnums index)? homeMenu,
    TResult Function(BottomAppBarEnums index)? historyMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_HomeMenu value) homeMenu,
    required TResult Function(_HistoryMenu value) historyMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HomeMenu value)? homeMenu,
    TResult? Function(_HistoryMenu value)? historyMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HomeMenu value)? homeMenu,
    TResult Function(_HistoryMenu value)? historyMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

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
    extends _$NavigationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NavigationEvent.started()';
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
    required TResult Function(BottomAppBarEnums index) homeMenu,
    required TResult Function(BottomAppBarEnums index) historyMenu,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BottomAppBarEnums index)? homeMenu,
    TResult? Function(BottomAppBarEnums index)? historyMenu,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BottomAppBarEnums index)? homeMenu,
    TResult Function(BottomAppBarEnums index)? historyMenu,
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
    required TResult Function(_HomeMenu value) homeMenu,
    required TResult Function(_HistoryMenu value) historyMenu,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HomeMenu value)? homeMenu,
    TResult? Function(_HistoryMenu value)? historyMenu,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HomeMenu value)? homeMenu,
    TResult Function(_HistoryMenu value)? historyMenu,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NavigationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_HomeMenuCopyWith<$Res> {
  factory _$$_HomeMenuCopyWith(
          _$_HomeMenu value, $Res Function(_$_HomeMenu) then) =
      __$$_HomeMenuCopyWithImpl<$Res>;
  @useResult
  $Res call({BottomAppBarEnums index});
}

/// @nodoc
class __$$_HomeMenuCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$_HomeMenu>
    implements _$$_HomeMenuCopyWith<$Res> {
  __$$_HomeMenuCopyWithImpl(
      _$_HomeMenu _value, $Res Function(_$_HomeMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_HomeMenu(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as BottomAppBarEnums,
    ));
  }
}

/// @nodoc

class _$_HomeMenu implements _HomeMenu {
  const _$_HomeMenu(this.index);

  @override
  final BottomAppBarEnums index;

  @override
  String toString() {
    return 'NavigationEvent.homeMenu(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeMenu &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeMenuCopyWith<_$_HomeMenu> get copyWith =>
      __$$_HomeMenuCopyWithImpl<_$_HomeMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BottomAppBarEnums index) homeMenu,
    required TResult Function(BottomAppBarEnums index) historyMenu,
  }) {
    return homeMenu(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BottomAppBarEnums index)? homeMenu,
    TResult? Function(BottomAppBarEnums index)? historyMenu,
  }) {
    return homeMenu?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BottomAppBarEnums index)? homeMenu,
    TResult Function(BottomAppBarEnums index)? historyMenu,
    required TResult orElse(),
  }) {
    if (homeMenu != null) {
      return homeMenu(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_HomeMenu value) homeMenu,
    required TResult Function(_HistoryMenu value) historyMenu,
  }) {
    return homeMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HomeMenu value)? homeMenu,
    TResult? Function(_HistoryMenu value)? historyMenu,
  }) {
    return homeMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HomeMenu value)? homeMenu,
    TResult Function(_HistoryMenu value)? historyMenu,
    required TResult orElse(),
  }) {
    if (homeMenu != null) {
      return homeMenu(this);
    }
    return orElse();
  }
}

abstract class _HomeMenu implements NavigationEvent {
  const factory _HomeMenu(final BottomAppBarEnums index) = _$_HomeMenu;

  BottomAppBarEnums get index;
  @JsonKey(ignore: true)
  _$$_HomeMenuCopyWith<_$_HomeMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HistoryMenuCopyWith<$Res> {
  factory _$$_HistoryMenuCopyWith(
          _$_HistoryMenu value, $Res Function(_$_HistoryMenu) then) =
      __$$_HistoryMenuCopyWithImpl<$Res>;
  @useResult
  $Res call({BottomAppBarEnums index});
}

/// @nodoc
class __$$_HistoryMenuCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$_HistoryMenu>
    implements _$$_HistoryMenuCopyWith<$Res> {
  __$$_HistoryMenuCopyWithImpl(
      _$_HistoryMenu _value, $Res Function(_$_HistoryMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_HistoryMenu(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as BottomAppBarEnums,
    ));
  }
}

/// @nodoc

class _$_HistoryMenu implements _HistoryMenu {
  const _$_HistoryMenu(this.index);

  @override
  final BottomAppBarEnums index;

  @override
  String toString() {
    return 'NavigationEvent.historyMenu(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryMenu &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryMenuCopyWith<_$_HistoryMenu> get copyWith =>
      __$$_HistoryMenuCopyWithImpl<_$_HistoryMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BottomAppBarEnums index) homeMenu,
    required TResult Function(BottomAppBarEnums index) historyMenu,
  }) {
    return historyMenu(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BottomAppBarEnums index)? homeMenu,
    TResult? Function(BottomAppBarEnums index)? historyMenu,
  }) {
    return historyMenu?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BottomAppBarEnums index)? homeMenu,
    TResult Function(BottomAppBarEnums index)? historyMenu,
    required TResult orElse(),
  }) {
    if (historyMenu != null) {
      return historyMenu(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_HomeMenu value) homeMenu,
    required TResult Function(_HistoryMenu value) historyMenu,
  }) {
    return historyMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HomeMenu value)? homeMenu,
    TResult? Function(_HistoryMenu value)? historyMenu,
  }) {
    return historyMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HomeMenu value)? homeMenu,
    TResult Function(_HistoryMenu value)? historyMenu,
    required TResult orElse(),
  }) {
    if (historyMenu != null) {
      return historyMenu(this);
    }
    return orElse();
  }
}

abstract class _HistoryMenu implements NavigationEvent {
  const factory _HistoryMenu(final BottomAppBarEnums index) = _$_HistoryMenu;

  BottomAppBarEnums get index;
  @JsonKey(ignore: true)
  _$$_HistoryMenuCopyWith<_$_HistoryMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() home,
    required TResult Function() history,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? home,
    TResult? Function()? history,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? home,
    TResult Function()? history,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Home value) home,
    required TResult Function(_History value) history,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Home value)? home,
    TResult? Function(_History value)? history,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Home value)? home,
    TResult Function(_History value)? history,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

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
    extends _$NavigationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NavigationState.initial()';
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
    required TResult Function() home,
    required TResult Function() history,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? home,
    TResult? Function()? history,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? home,
    TResult Function()? history,
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
    required TResult Function(_Home value) home,
    required TResult Function(_History value) history,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Home value)? home,
    TResult? Function(_History value)? history,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Home value)? home,
    TResult Function(_History value)? history,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NavigationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Home implements _Home {
  const _$_Home();

  @override
  String toString() {
    return 'NavigationState.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() home,
    required TResult Function() history,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? home,
    TResult? Function()? history,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? home,
    TResult Function()? history,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Home value) home,
    required TResult Function(_History value) history,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Home value)? home,
    TResult? Function(_History value)? history,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Home value)? home,
    TResult Function(_History value)? history,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home implements NavigationState {
  const factory _Home() = _$_Home;
}

/// @nodoc
abstract class _$$_HistoryCopyWith<$Res> {
  factory _$$_HistoryCopyWith(
          _$_History value, $Res Function(_$_History) then) =
      __$$_HistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_History>
    implements _$$_HistoryCopyWith<$Res> {
  __$$_HistoryCopyWithImpl(_$_History _value, $Res Function(_$_History) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_History implements _History {
  const _$_History();

  @override
  String toString() {
    return 'NavigationState.history()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_History);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() home,
    required TResult Function() history,
  }) {
    return history();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? home,
    TResult? Function()? history,
  }) {
    return history?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? home,
    TResult Function()? history,
    required TResult orElse(),
  }) {
    if (history != null) {
      return history();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Home value) home,
    required TResult Function(_History value) history,
  }) {
    return history(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Home value)? home,
    TResult? Function(_History value)? history,
  }) {
    return history?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Home value)? home,
    TResult Function(_History value)? history,
    required TResult orElse(),
  }) {
    if (history != null) {
      return history(this);
    }
    return orElse();
  }
}

abstract class _History implements NavigationState {
  const factory _History() = _$_History;
}
