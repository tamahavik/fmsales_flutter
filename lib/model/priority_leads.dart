import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'priority_leads.g.dart';

@JsonSerializable()
@collection
class PriorityLeads {
  @JsonKey(includeFromJson: false)
  Id? id = Isar.autoIncrement;
  String? name;
  String? refCode;
  int? limitDate;

  PriorityLeads(this.name, this.refCode, this.limitDate);

  factory PriorityLeads.fromJson(Map<String, dynamic> json) =>
      _$PriorityLeadsFromJson(json);
}
