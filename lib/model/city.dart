import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
@collection
class City {
  Id? id = Isar.autoIncrement;
  String? cityCode;
  String? provCode;
  String? dati2;
  String? action;

  City(this.cityCode, this.provCode, this.dati2, this.action);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
