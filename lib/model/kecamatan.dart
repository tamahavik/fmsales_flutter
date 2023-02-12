import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'kecamatan.g.dart';

@JsonSerializable()
@collection
class Kecamatan {
  Id? id = Isar.autoIncrement;
  String? kecCode;
  String? kecamatan;
  String? cityCode;
  String? action;

  Kecamatan(this.kecCode, this.kecamatan, this.cityCode, this.action);

  factory Kecamatan.fromJson(Map<String, dynamic> json) =>
      _$KecamatanFromJson(json);
}
