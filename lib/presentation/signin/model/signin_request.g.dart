// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SigninRequest _$$_SigninRequestFromJson(Map<String, dynamic> json) =>
    _$_SigninRequest(
      username: json['username'] as String?,
      password: json['password'] as String?,
      deviceId: json['deviceId'] as String?,
      tokenId: json['tokenId'] as String?,
      deviceInfo: json['deviceInfo'],
    );

Map<String, dynamic> _$$_SigninRequestToJson(_$_SigninRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'deviceId': instance.deviceId,
      'tokenId': instance.tokenId,
      'deviceInfo': instance.deviceInfo,
    };
