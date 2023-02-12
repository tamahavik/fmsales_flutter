import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'occupation.g.dart';

@JsonSerializable()
@collection
class Occupation {
  Id? id = Isar.autoIncrement;
  String? occuCode;
  String? occuDesc;
  String? visible;

  Occupation(this.occuCode, this.occuDesc, this.visible);

  factory Occupation.fromJson(Map<String, dynamic> json) =>
      _$OccupationFromJson(json);
}
