import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
@collection
class Model {
  Id? id = Isar.autoIncrement;
  String? objCode;
  String? objGrp;
  String? objDescr;
  String? objBrand;
  String? objModel;
  String? objType;
  String? objSize;
  String? objMake;
  String? branchId;
  String? categoryId;
  String? needAddColl;
  String? newUsed;
  String? isVehicle;

  Model(
      this.objCode,
      this.objGrp,
      this.objDescr,
      this.objBrand,
      this.objModel,
      this.objType,
      this.objSize,
      this.objMake,
      this.branchId,
      this.categoryId,
      this.needAddColl,
      this.newUsed,
      this.isVehicle);

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
