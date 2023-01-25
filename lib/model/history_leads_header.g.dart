// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_leads_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryLeadsHeader _$$_HistoryLeadsHeaderFromJson(
        Map<String, dynamic> json) =>
    _$_HistoryLeadsHeader(
      modificationDate: json['modificationDate'] as String?,
      followUpResult: json['followUpResult'] as String?,
      leads: json['leads'] == null
          ? null
          : HistoryLeadsDetail.fromJson(json['leads'] as Map<String, dynamic>),
      leadsOrderId: json['leadsOrderId'] as String?,
    );

Map<String, dynamic> _$$_HistoryLeadsHeaderToJson(
        _$_HistoryLeadsHeader instance) =>
    <String, dynamic>{
      'modificationDate': instance.modificationDate,
      'followUpResult': instance.followUpResult,
      'leads': instance.leads,
      'leadsOrderId': instance.leadsOrderId,
    };
