import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
@collection
class Model {
  Id? id = Isar.autoIncrement;
  String? objectCode;
  String? objectGroup;
  String? objectDescription;
  String? objectBrand;
  String? objectModel;
  String? objectType;
  String? objectSize;
  String? objectMake;
  String? branchId;
  String? categoryId;
  String? needAddColl;
  String? newUsed;
  String? isVehicle;

  Model(
      this.objectCode,
      this.objectGroup,
      this.objectDescription,
      this.objectBrand,
      this.objectModel,
      this.objectType,
      this.objectSize,
      this.objectMake,
      this.branchId,
      this.categoryId,
      this.needAddColl,
      this.newUsed,
      this.isVehicle);

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
