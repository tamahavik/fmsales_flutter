// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) startSync,
    required TResult Function() tryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? startSync,
    TResult? Function()? tryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? startSync,
    TResult Function()? tryAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSync value) startSync,
    required TResult Function(_TryAgain value) tryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSync value)? startSync,
    TResult? Function(_TryAgain value)? tryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSync value)? startSync,
    TResult Function(_TryAgain value)? tryAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartSyncCopyWith<$Res> {
  factory _$$_StartSyncCopyWith(
          _$_StartSync value, $Res Function(_$_StartSync) then) =
      __$$_StartSyncCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_StartSyncCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_StartSync>
    implements _$$_StartSyncCopyWith<$Res> {
  __$$_StartSyncCopyWithImpl(
      _$_StartSync _value, $Res Function(_$_StartSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_StartSync(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartSync implements _StartSync {
  const _$_StartSync(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'SplashEvent.startSync(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartSync &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartSyncCopyWith<_$_StartSync> get copyWith =>
      __$$_StartSyncCopyWithImpl<_$_StartSync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) startSync,
    required TResult Function() tryAgain,
  }) {
    return startSync(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? startSync,
    TResult? Function()? tryAgain,
  }) {
    return startSync?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? startSync,
    TResult Function()? tryAgain,
    required TResult orElse(),
  }) {
    if (startSync != null) {
      return startSync(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSync value) startSync,
    required TResult Function(_TryAgain value) tryAgain,
  }) {
    return startSync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSync value)? startSync,
    TResult? Function(_TryAgain value)? tryAgain,
  }) {
    return startSync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSync value)? startSync,
    TResult Function(_TryAgain value)? tryAgain,
    required TResult orElse(),
  }) {
    if (startSync != null) {
      return startSync(this);
    }
    return orElse();
  }
}

abstract class _StartSync implements SplashEvent {
  const factory _StartSync(final int value) = _$_StartSync;

  int get value;
  @JsonKey(ignore: true)
  _$$_StartSyncCopyWith<_$_StartSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TryAgainCopyWith<$Res> {
  factory _$$_TryAgainCopyWith(
          _$_TryAgain value, $Res Function(_$_TryAgain) then) =
      __$$_TryAgainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TryAgainCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_TryAgain>
    implements _$$_TryAgainCopyWith<$Res> {
  __$$_TryAgainCopyWithImpl(
      _$_TryAgain _value, $Res Function(_$_TryAgain) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TryAgain implements _TryAgain {
  const _$_TryAgain();

  @override
  String toString() {
    return 'SplashEvent.tryAgain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TryAgain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) startSync,
    required TResult Function() tryAgain,
  }) {
    return tryAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? startSync,
    TResult? Function()? tryAgain,
  }) {
    return tryAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? startSync,
    TResult Function()? tryAgain,
    required TResult orElse(),
  }) {
    if (tryAgain != null) {
      return tryAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSync value) startSync,
    required TResult Function(_TryAgain value) tryAgain,
  }) {
    return tryAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSync value)? startSync,
    TResult? Function(_TryAgain value)? tryAgain,
  }) {
    return tryAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSync value)? startSync,
    TResult Function(_TryAgain value)? tryAgain,
    required TResult orElse(),
  }) {
    if (tryAgain != null) {
      return tryAgain(this);
    }
    return orElse();
  }
}

abstract class _TryAgain implements SplashEvent {
  const factory _TryAgain() = _$_TryAgain;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) continueSync,
    required TResult Function(String title, String message) failedSync,
    required TResult Function(bool isLogin) completedSync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int value)? continueSync,
    TResult? Function(String title, String message)? failedSync,
    TResult? Function(bool isLogin)? completedSync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? continueSync,
    TResult Function(String title, String message)? failedSync,
    TResult Function(bool isLogin)? completedSync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContinueSync value) continueSync,
    required TResult Function(_failedSync value) failedSync,
    required TResult Function(_CompletedSync value) completedSync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContinueSync value)? continueSync,
    TResult? Function(_failedSync value)? failedSync,
    TResult? Function(_CompletedSync value)? completedSync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContinueSync value)? continueSync,
    TResult Function(_failedSync value)? failedSync,
    TResult Function(_CompletedSync value)? completedSync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

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
    extends _$SplashStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
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
    required TResult Function(int value) continueSync,
    required TResult Function(String title, String message) failedSync,
    required TResult Function(bool isLogin) completedSync,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int value)? continueSync,
    TResult? Function(String title, String message)? failedSync,
    TResult? Function(bool isLogin)? completedSync,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? continueSync,
    TResult Function(String title, String message)? failedSync,
    TResult Function(bool isLogin)? completedSync,
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
    required TResult Function(_ContinueSync value) continueSync,
    required TResult Function(_failedSync value) failedSync,
    required TResult Function(_CompletedSync value) completedSync,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContinueSync value)? continueSync,
    TResult? Function(_failedSync value)? failedSync,
    TResult? Function(_CompletedSync value)? completedSync,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContinueSync value)? continueSync,
    TResult Function(_failedSync value)? failedSync,
    TResult Function(_CompletedSync value)? completedSync,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ContinueSyncCopyWith<$Res> {
  factory _$$_ContinueSyncCopyWith(
          _$_ContinueSync value, $Res Function(_$_ContinueSync) then) =
      __$$_ContinueSyncCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_ContinueSyncCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_ContinueSync>
    implements _$$_ContinueSyncCopyWith<$Res> {
  __$$_ContinueSyncCopyWithImpl(
      _$_ContinueSync _value, $Res Function(_$_ContinueSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ContinueSync(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ContinueSync implements _ContinueSync {
  const _$_ContinueSync(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'SplashState.continueSync(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContinueSync &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContinueSyncCopyWith<_$_ContinueSync> get copyWith =>
      __$$_ContinueSyncCopyWithImpl<_$_ContinueSync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) continueSync,
    required TResult Function(String title, String message) failedSync,
    required TResult Function(bool isLogin) completedSync,
  }) {
    return continueSync(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int value)? continueSync,
    TResult? Function(String title, String message)? failedSync,
    TResult? Function(bool isLogin)? completedSync,
  }) {
    return continueSync?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? continueSync,
    TResult Function(String title, String message)? failedSync,
    TResult Function(bool isLogin)? completedSync,
    required TResult orElse(),
  }) {
    if (continueSync != null) {
      return continueSync(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContinueSync value) continueSync,
    required TResult Function(_failedSync value) failedSync,
    required TResult Function(_CompletedSync value) completedSync,
  }) {
    return continueSync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContinueSync value)? continueSync,
    TResult? Function(_failedSync value)? failedSync,
    TResult? Function(_CompletedSync value)? completedSync,
  }) {
    return continueSync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContinueSync value)? continueSync,
    TResult Function(_failedSync value)? failedSync,
    TResult Function(_CompletedSync value)? completedSync,
    required TResult orElse(),
  }) {
    if (continueSync != null) {
      return continueSync(this);
    }
    return orElse();
  }
}

abstract class _ContinueSync implements SplashState {
  const factory _ContinueSync(final int value) = _$_ContinueSync;

  int get value;
  @JsonKey(ignore: true)
  _$$_ContinueSyncCopyWith<_$_ContinueSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_failedSyncCopyWith<$Res> {
  factory _$$_failedSyncCopyWith(
          _$_failedSync value, $Res Function(_$_failedSync) then) =
      __$$_failedSyncCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class __$$_failedSyncCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_failedSync>
    implements _$$_failedSyncCopyWith<$Res> {
  __$$_failedSyncCopyWithImpl(
      _$_failedSync _value, $Res Function(_$_failedSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$_failedSync(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_failedSync implements _failedSync {
  const _$_failedSync(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'SplashState.failedSync(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_failedSync &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_failedSyncCopyWith<_$_failedSync> get copyWith =>
      __$$_failedSyncCopyWithImpl<_$_failedSync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) continueSync,
    required TResult Function(String title, String message) failedSync,
    required TResult Function(bool isLogin) completedSync,
  }) {
    return failedSync(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int value)? continueSync,
    TResult? Function(String title, String message)? failedSync,
    TResult? Function(bool isLogin)? completedSync,
  }) {
    return failedSync?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? continueSync,
    TResult Function(String title, String message)? failedSync,
    TResult Function(bool isLogin)? completedSync,
    required TResult orElse(),
  }) {
    if (failedSync != null) {
      return failedSync(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContinueSync value) continueSync,
    required TResult Function(_failedSync value) failedSync,
    required TResult Function(_CompletedSync value) completedSync,
  }) {
    return failedSync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContinueSync value)? continueSync,
    TResult? Function(_failedSync value)? failedSync,
    TResult? Function(_CompletedSync value)? completedSync,
  }) {
    return failedSync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContinueSync value)? continueSync,
    TResult Function(_failedSync value)? failedSync,
    TResult Function(_CompletedSync value)? completedSync,
    required TResult orElse(),
  }) {
    if (failedSync != null) {
      return failedSync(this);
    }
    return orElse();
  }
}

abstract class _failedSync implements SplashState {
  const factory _failedSync(final String title, final String message) =
      _$_failedSync;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$_failedSyncCopyWith<_$_failedSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedSyncCopyWith<$Res> {
  factory _$$_CompletedSyncCopyWith(
          _$_CompletedSync value, $Res Function(_$_CompletedSync) then) =
      __$$_CompletedSyncCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class __$$_CompletedSyncCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_CompletedSync>
    implements _$$_CompletedSyncCopyWith<$Res> {
  __$$_CompletedSyncCopyWithImpl(
      _$_CompletedSync _value, $Res Function(_$_CompletedSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_$_CompletedSync(
      null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CompletedSync implements _CompletedSync {
  const _$_CompletedSync(this.isLogin);

  @override
  final bool isLogin;

  @override
  String toString() {
    return 'SplashState.completedSync(isLogin: $isLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletedSync &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedSyncCopyWith<_$_CompletedSync> get copyWith =>
      __$$_CompletedSyncCopyWithImpl<_$_CompletedSync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) continueSync,
    required TResult Function(String title, String message) failedSync,
    required TResult Function(bool isLogin) completedSync,
  }) {
    return completedSync(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int value)? continueSync,
    TResult? Function(String title, String message)? failedSync,
    TResult? Function(bool isLogin)? completedSync,
  }) {
    return completedSync?.call(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? continueSync,
    TResult Function(String title, String message)? failedSync,
    TResult Function(bool isLogin)? completedSync,
    required TResult orElse(),
  }) {
    if (completedSync != null) {
      return completedSync(isLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ContinueSync value) continueSync,
    required TResult Function(_failedSync value) failedSync,
    required TResult Function(_CompletedSync value) completedSync,
  }) {
    return completedSync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ContinueSync value)? continueSync,
    TResult? Function(_failedSync value)? failedSync,
    TResult? Function(_CompletedSync value)? completedSync,
  }) {
    return completedSync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ContinueSync value)? continueSync,
    TResult Function(_failedSync value)? failedSync,
    TResult Function(_CompletedSync value)? completedSync,
    required TResult orElse(),
  }) {
    if (completedSync != null) {
      return completedSync(this);
    }
    return orElse();
  }
}

abstract class _CompletedSync implements SplashState {
  const factory _CompletedSync(final bool isLogin) = _$_CompletedSync;

  bool get isLogin;
  @JsonKey(ignore: true)
  _$$_CompletedSyncCopyWith<_$_CompletedSync> get copyWith =>
      throw _privateConstructorUsedError;
}
