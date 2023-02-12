import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'province.g.dart';

@JsonSerializable()
@collection
class Province {
  Id? id = Isar.autoIncrement;
  String? provCode;
  String? provinsi;
  String? action;

  Province(this.provCode, this.provinsi, this.action);

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}
