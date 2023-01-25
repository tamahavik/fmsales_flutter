import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_leads_detail.freezed.dart';
part 'history_leads_detail.g.dart';

@freezed
class HistoryLeadsDetail with _$HistoryLeadsDetail {
  const factory HistoryLeadsDetail({
    String? customerName,
    String? mobileNo01,
    String? customerNo,
  }) = _HistoryLeadsDetail;

  factory HistoryLeadsDetail.fromJson(Map<String, dynamic> json) =>
      _$HistoryLeadsDetailFromJson(json);
}
