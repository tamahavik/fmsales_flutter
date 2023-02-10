import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_leads.g.dart';
part 'priority_leads.freezed.dart';

@freezed
class PriorityLeads with _$PriorityLeads {
  const factory PriorityLeads({
    int? id,
    String? name,
    String? refCode,
    int? limitDate,
  }) = _PriorityLeads;

  factory PriorityLeads.fromJson(Map<String, dynamic> json) =>
      _$PriorityLeadsFromJson(json);
}
