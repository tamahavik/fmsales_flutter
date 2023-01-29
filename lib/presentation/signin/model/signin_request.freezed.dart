// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SigninRequest _$SigninRequestFromJson(Map<String, dynamic> json) {
  return _SigninRequest.fromJson(json);
}

/// @nodoc
mixin _$SigninRequest {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get tokenId => throw _privateConstructorUsedError;
  Object? get deviceInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninRequestCopyWith<SigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninRequestCopyWith<$Res> {
  factory $SigninRequestCopyWith(
          SigninRequest value, $Res Function(SigninRequest) then) =
      _$SigninRequestCopyWithImpl<$Res, SigninRequest>;
  @useResult
  $Res call(
      {String? username,
      String? password,
      String? deviceId,
      String? tokenId,
      Object? deviceInfo});
}

/// @nodoc
class _$SigninRequestCopyWithImpl<$Res, $Val extends SigninRequest>
    implements $SigninRequestCopyWith<$Res> {
  _$SigninRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? deviceId = freezed,
    Object? tokenId = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: freezed == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo ? _value.deviceInfo : deviceInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigninRequestCopyWith<$Res>
    implements $SigninRequestCopyWith<$Res> {
  factory _$$_SigninRequestCopyWith(
          _$_SigninRequest value, $Res Function(_$_SigninRequest) then) =
      __$$_SigninRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? password,
      String? deviceId,
      String? tokenId,
      Object? deviceInfo});
}

/// @nodoc
class __$$_SigninRequestCopyWithImpl<$Res>
    extends _$SigninRequestCopyWithImpl<$Res, _$_SigninRequest>
    implements _$$_SigninRequestCopyWith<$Res> {
  __$$_SigninRequestCopyWithImpl(
      _$_SigninRequest _value, $Res Function(_$_SigninRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? deviceId = freezed,
    Object? tokenId = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$_SigninRequest(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: freezed == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo ? _value.deviceInfo : deviceInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SigninRequest implements _SigninRequest {
  const _$_SigninRequest(
      {this.username,
      this.password,
      this.deviceId,
      this.tokenId,
      this.deviceInfo});

  factory _$_SigninRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SigninRequestFromJson(json);

  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? deviceId;
  @override
  final String? tokenId;
  @override
  final Object? deviceInfo;

  @override
  String toString() {
    return 'SigninRequest(username: $username, password: $password, deviceId: $deviceId, tokenId: $tokenId, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninRequest &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            const DeepCollectionEquality()
                .equals(other.deviceInfo, deviceInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, deviceId,
      tokenId, const DeepCollectionEquality().hash(deviceInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninRequestCopyWith<_$_SigninRequest> get copyWith =>
      __$$_SigninRequestCopyWithImpl<_$_SigninRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SigninRequestToJson(
      this,
    );
  }
}

abstract class _SigninRequest implements SigninRequest {
  const factory _SigninRequest(
      {final String? username,
      final String? password,
      final String? deviceId,
      final String? tokenId,
      final Object? deviceInfo}) = _$_SigninRequest;

  factory _SigninRequest.fromJson(Map<String, dynamic> json) =
      _$_SigninRequest.fromJson;

  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get deviceId;
  @override
  String? get tokenId;
  @override
  Object? get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SigninRequestCopyWith<_$_SigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
