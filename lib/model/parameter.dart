import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parameter.g.dart';

@JsonSerializable()
@collection
class Parameter {
  @JsonKey(includeFromJson: false)
  Id? id = Isar.autoIncrement;
  int? version;
  String? startDate;
  String? endDate;
  String? name;
  String? value;
  String? satuan;
  String? description;

  Parameter(this.version, this.startDate, this.endDate, this.name, this.value,
      this.satuan, this.description);

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}
