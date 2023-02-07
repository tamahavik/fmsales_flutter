// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Parameter _$$_ParameterFromJson(Map<String, dynamic> json) => _$_Parameter(
      id: json['id'] as String?,
      version: json['version'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      name: json['name'] as String?,
      value: json['value'] as String?,
      satuan: json['satuan'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ParameterToJson(_$_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'name': instance.name,
      'value': instance.value,
      'satuan': instance.satuan,
      'description': instance.description,
    };
