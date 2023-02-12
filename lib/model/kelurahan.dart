import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'kelurahan.g.dart';

@JsonSerializable()
@collection
class Kelurahan {
  Id? id = Isar.autoIncrement;
  String? kelCode;
  String? kelurahan;
  String? kecCode;
  String? action;

  Kelurahan(this.kelCode, this.kelurahan, this.kecCode, this.action);

  factory Kelurahan.fromJson(Map<String, dynamic> json) =>
      _$KelurahanFromJson(json);
}
