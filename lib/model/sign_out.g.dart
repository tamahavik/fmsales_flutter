// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignOut _$SignOutFromJson(Map<String, dynamic> json) => SignOut(
      json['token'] as String?,
      json['employeeId'] as String?,
      $enumDecode(_$LogoutEnumEnumMap, json['source']),
    );

Map<String, dynamic> _$SignOutToJson(SignOut instance) => <String, dynamic>{
      'token': instance.token,
      'employeeId': instance.employeeId,
      'source': _$LogoutEnumEnumMap[instance.source]!,
    };

const _$LogoutEnumEnumMap = {
  LogoutEnum.FORCE: 'FORCE',
  LogoutEnum.USER: 'USER',
};
