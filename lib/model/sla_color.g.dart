// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sla_color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlaColor _$$_SlaColorFromJson(Map<String, dynamic> json) => _$_SlaColor(
      id: json['id'] as String?,
      sourceLeads: json['sourceLeads'] as String?,
      timeStart: json['timeStart'] as int?,
      timeEnd: json['timeEnd'] as int?,
      colorCode: json['colorCode'] as String?,
      sourceIdVisum: json['sourceIdVisum'] as String?,
    );

Map<String, dynamic> _$$_SlaColorToJson(_$_SlaColor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceLeads': instance.sourceLeads,
      'timeStart': instance.timeStart,
      'timeEnd': instance.timeEnd,
      'colorCode': instance.colorCode,
      'sourceIdVisum': instance.sourceIdVisum,
    };
