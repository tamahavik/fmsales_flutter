// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_leads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullLeads _$PullLeadsFromJson(Map<String, dynamic> json) => PullLeads(
      json['custNo'] as String,
      json['custName'] as String,
      json['birthDate'] as int,
      json['dataSource'] as String,
    );

Map<String, dynamic> _$PullLeadsToJson(PullLeads instance) => <String, dynamic>{
      'custNo': instance.custNo,
      'custName': instance.custName,
      'birthDate': instance.birthDate,
      'dataSource': instance.dataSource,
    };
