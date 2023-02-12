import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parameter_priority.g.dart';

@JsonSerializable()
@collection
class ParameterPriority {
  @JsonKey(includeFromJson: false)
  Id? id = Isar.autoIncrement;
  String? name;
  String? refCode;
  int? limitDate;

  ParameterPriority(this.name, this.refCode, this.limitDate);

  factory ParameterPriority.fromJson(Map<String, dynamic> json) =>
      _$ParameterPriorityFromJson(json);
}
