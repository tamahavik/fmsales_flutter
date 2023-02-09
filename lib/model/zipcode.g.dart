// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zipcode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZipCode _$$_ZipCodeFromJson(Map<String, dynamic> json) => _$_ZipCode(
      zipCode: json['zipCode'] as String?,
      subZipCode: json['subZipCode'] as String?,
      zipDesc: json['zipDesc'] as String?,
      provCode: json['provCode'] as String?,
      cityCode: json['cityCode'] as String?,
      kecCode: json['kecCode'] as String?,
      kelCode: json['kelCode'] as String?,
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      updateBy: json['updateBy'] as String?,
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$_ZipCodeToJson(_$_ZipCode instance) =>
    <String, dynamic>{
      'zipCode': instance.zipCode,
      'subZipCode': instance.subZipCode,
      'zipDesc': instance.zipDesc,
      'provCode': instance.provCode,
      'cityCode': instance.cityCode,
      'kecCode': instance.kecCode,
      'kelCode': instance.kelCode,
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'updateBy': instance.updateBy,
      'updateDate': instance.updateDate?.toIso8601String(),
      'action': instance.action,
    };
