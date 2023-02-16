import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status_leads_open.g.dart';

@JsonSerializable()
@collection
class StatusLeadsOpen {
  Id? id = Isar.autoIncrement;
  String? contractNo;
  String? custNo;
  String? assignTo;
  String? dataSource;
  String? custName;
  String? birthDate;

  StatusLeadsOpen(
    this.contractNo,
    this.custNo,
    this.assignTo,
    this.dataSource,
    this.custName,
    this.birthDate,
  );

  factory StatusLeadsOpen.fromJson(Map<String, dynamic> json) =>
      _$StatusLeadsOpenFromJson(json);

  Map<String, dynamic> toJson() => _$StatusLeadsOpenToJson(this);
}
