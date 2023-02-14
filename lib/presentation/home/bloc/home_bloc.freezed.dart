// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() verificationMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? verificationMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verificationMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VerificationMenu value) verificationMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VerificationMenu value)? verificationMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerificationMenu value)? verificationMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function() verificationMenu,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? verificationMenu,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verificationMenu,
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
    required TResult Function(_VerificationMenu value) verificationMenu,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VerificationMenu value)? verificationMenu,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerificationMenu value)? verificationMenu,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_VerificationMenuCopyWith<$Res> {
  factory _$$_VerificationMenuCopyWith(
          _$_VerificationMenu value, $Res Function(_$_VerificationMenu) then) =
      __$$_VerificationMenuCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerificationMenuCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_VerificationMenu>
    implements _$$_VerificationMenuCopyWith<$Res> {
  __$$_VerificationMenuCopyWithImpl(
      _$_VerificationMenu _value, $Res Function(_$_VerificationMenu) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerificationMenu implements _VerificationMenu {
  const _$_VerificationMenu();

  @override
  String toString() {
    return 'HomeEvent.verificationMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerificationMenu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() verificationMenu,
  }) {
    return verificationMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? verificationMenu,
  }) {
    return verificationMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? verificationMenu,
    required TResult orElse(),
  }) {
    if (verificationMenu != null) {
      return verificationMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VerificationMenu value) verificationMenu,
  }) {
    return verificationMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VerificationMenu value)? verificationMenu,
  }) {
    return verificationMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VerificationMenu value)? verificationMenu,
    required TResult orElse(),
  }) {
    if (verificationMenu != null) {
      return verificationMenu(this);
    }
    return orElse();
  }
}

abstract class _VerificationMenu implements HomeEvent {
  const factory _VerificationMenu() = _$_VerificationMenu;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fullName) fullName,
    required TResult Function() verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String fullName)? fullName,
    TResult? Function()? verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fullName)? fullName,
    TResult Function()? verification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FullName value) fullName,
    required TResult Function(_Verification value) verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FullName value)? fullName,
    TResult? Function(_Verification value)? verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FullName value)? fullName,
    TResult Function(_Verification value)? verification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function(String fullName) fullName,
    required TResult Function() verification,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String fullName)? fullName,
    TResult? Function()? verification,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fullName)? fullName,
    TResult Function()? verification,
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
    required TResult Function(_FullName value) fullName,
    required TResult Function(_Verification value) verification,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FullName value)? fullName,
    TResult? Function(_Verification value)? verification,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FullName value)? fullName,
    TResult Function(_Verification value)? verification,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FullNameCopyWith<$Res> {
  factory _$$_FullNameCopyWith(
          _$_FullName value, $Res Function(_$_FullName) then) =
      __$$_FullNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$_FullNameCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_FullName>
    implements _$$_FullNameCopyWith<$Res> {
  __$$_FullNameCopyWithImpl(
      _$_FullName _value, $Res Function(_$_FullName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$_FullName(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullName implements _FullName {
  const _$_FullName(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'HomeState.fullName(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullName &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameCopyWith<_$_FullName> get copyWith =>
      __$$_FullNameCopyWithImpl<_$_FullName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fullName) fullName,
    required TResult Function() verification,
  }) {
    return fullName(this.fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String fullName)? fullName,
    TResult? Function()? verification,
  }) {
    return fullName?.call(this.fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fullName)? fullName,
    TResult Function()? verification,
    required TResult orElse(),
  }) {
    if (fullName != null) {
      return fullName(this.fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FullName value) fullName,
    required TResult Function(_Verification value) verification,
  }) {
    return fullName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FullName value)? fullName,
    TResult? Function(_Verification value)? verification,
  }) {
    return fullName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FullName value)? fullName,
    TResult Function(_Verification value)? verification,
    required TResult orElse(),
  }) {
    if (fullName != null) {
      return fullName(this);
    }
    return orElse();
  }
}

abstract class _FullName implements HomeState {
  const factory _FullName(final String fullName) = _$_FullName;

  String get fullName;
  @JsonKey(ignore: true)
  _$$_FullNameCopyWith<_$_FullName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerificationCopyWith<$Res> {
  factory _$$_VerificationCopyWith(
          _$_Verification value, $Res Function(_$_Verification) then) =
      __$$_VerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerificationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Verification>
    implements _$$_VerificationCopyWith<$Res> {
  __$$_VerificationCopyWithImpl(
      _$_Verification _value, $Res Function(_$_Verification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Verification implements _Verification {
  const _$_Verification();

  @override
  String toString() {
    return 'HomeState.verification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fullName) fullName,
    required TResult Function() verification,
  }) {
    return verification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String fullName)? fullName,
    TResult? Function()? verification,
  }) {
    return verification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fullName)? fullName,
    TResult Function()? verification,
    required TResult orElse(),
  }) {
    if (verification != null) {
      return verification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FullName value) fullName,
    required TResult Function(_Verification value) verification,
  }) {
    return verification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FullName value)? fullName,
    TResult? Function(_Verification value)? verification,
  }) {
    return verification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FullName value)? fullName,
    TResult Function(_Verification value)? verification,
    required TResult orElse(),
  }) {
    if (verification != null) {
      return verification(this);
    }
    return orElse();
  }
}

abstract class _Verification implements HomeState {
  const factory _Verification() = _$_Verification;
}
