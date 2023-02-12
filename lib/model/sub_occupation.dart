import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_occupation.g.dart';

@JsonSerializable()
@collection
class SubOccupation {
  Id? id = Isar.autoIncrement;
  String? occuSubCode;
  String? occuSubDesc;
  String? visible;
  String? occuCode;

  SubOccupation(
      this.occuSubCode, this.occuSubDesc, this.visible, this.occuCode);

  factory SubOccupation.fromJson(Map<String, dynamic> json) =>
      _$SubOccupationFromJson(json);
}
