import 'package:json_annotation/json_annotation.dart';

part 'pull_leads.g.dart';

@JsonSerializable()
class PullLeads {
  String custNo = '';
  String custName = '';
  int birthDate = 0;
  String dataSource = '';

  PullLeads(this.custNo, this.custName, this.birthDate, this.dataSource);

  factory PullLeads.fromJson(Map<String, dynamic> json) =>
      _$PullLeadsFromJson(json);

  Map<String, dynamic> toJson() => _$PullLeadsToJson(this);
}
