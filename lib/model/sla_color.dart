import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sla_color.g.dart';

@JsonSerializable()
@collection
class SlaColor {
  @JsonKey(includeFromJson: false)
  Id? id = Isar.autoIncrement;
  String? sourceLeads;
  int? timeStart;
  int? timeEnd;
  String? colorCode;
  String? sourceIdVisum;

  SlaColor(this.sourceLeads, this.timeStart, this.timeEnd, this.colorCode,
      this.sourceIdVisum);

  factory SlaColor.fromJson(Map<String, dynamic> json) =>
      _$SlaColorFromJson(json);
}
