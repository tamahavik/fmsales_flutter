import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ufi/model/history_leads_detail.dart';

part 'history_leads_header.freezed.dart';
part 'history_leads_header.g.dart';

@freezed
class HistoryLeadsHeader with _$HistoryLeadsHeader{ 
  const factory HistoryLeadsHeader({
    String? modificationDate,
    String? followUpResult,
    HistoryLeadsDetail? leads,
    String? leadsOrderId,
  }) = _HistoryLeadsHeader;
 
  factory HistoryLeadsHeader.fromJson(Map<String, dynamic> json) => _$HistoryLeadsHeaderFromJson(json);
  
}