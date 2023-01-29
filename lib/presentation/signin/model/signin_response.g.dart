// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SigninResponse _$$_SigninResponseFromJson(Map<String, dynamic> json) =>
    _$_SigninResponse(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      message: json['message'] as String?,
      userId: json['userId'] as String?,
      fullName: json['fullName'] as String?,
      jobGroup: json['jobGroup'] as String?,
      branchCode: json['branchCode'] as String?,
      branchName: json['branchName'] as String?,
      serviceOfficeCode: json['serviceOfficeCode'] as String?,
      serviceOfficeName: json['serviceOfficeName'] as String?,
      daf: json['daf'] as bool?,
      flagActive: json['flagActive'] as String?,
      employeeNumber: json['employeeNumber'] as String?,
      loginPhone: json['loginPhone'] as String?,
      timeDiff: json['timeDiff'] as int?,
    );

Map<String, dynamic> _$$_SigninResponseToJson(_$_SigninResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'message': instance.message,
      'userId': instance.userId,
      'fullName': instance.fullName,
      'jobGroup': instance.jobGroup,
      'branchCode': instance.branchCode,
      'branchName': instance.branchName,
      'serviceOfficeCode': instance.serviceOfficeCode,
      'serviceOfficeName': instance.serviceOfficeName,
      'daf': instance.daf,
      'flagActive': instance.flagActive,
      'employeeNumber': instance.employeeNumber,
      'loginPhone': instance.loginPhone,
      'timeDiff': instance.timeDiff,
    };
