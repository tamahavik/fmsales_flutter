import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'category.g.dart';

@JsonSerializable()
@collection
class Category {
  Id? id = Isar.autoIncrement;
  String? objectGroup;
  String? objectDescription;
  String? collType;

  Category(this.objectGroup, this.objectDescription, this.collType);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
