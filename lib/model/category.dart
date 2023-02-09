import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category(
      {String? objGroup,
      String? objectDescription,
      String? collType}) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}