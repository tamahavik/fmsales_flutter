import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.g.dart';
part 'model.freezed.dart';

@freezed
class Model with _$Model {
  const factory Model({
    String? objCode,
    String? objGrp,
    String? objDescr,
    String? objBrand,
    String? objModel,
    String? objType,
    String? objSize,
    String? objMake,
    String? branchId,
    String? categoryId,
    String? needAddColl,
    String? newUsed,
    String? isVehicle,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
