import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'zipcode.g.dart';

@JsonSerializable()
@collection
class ZipCode {
  Id? id = Isar.autoIncrement;
  String? zipCode;
  String? subZipCode;
  String? zipDesc;
  String? provCode;
  String? cityCode;
  String? kecCode;
  String? kelCode;
  String? createBy;
  int? createDate;
  String? updateBy;
  int? updateDate;
  String? action;

  ZipCode(
      this.zipCode,
      this.subZipCode,
      this.zipDesc,
      this.provCode,
      this.cityCode,
      this.kecCode,
      this.kelCode,
      this.createBy,
      this.createDate,
      this.updateBy,
      this.updateDate,
      this.action);

  factory ZipCode.fromJson(Map<String, dynamic> json) =>
      _$ZipCodeFromJson(json);
}
