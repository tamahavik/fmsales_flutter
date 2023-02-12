import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'holiday.g.dart';

@JsonSerializable()
@collection
class Holiday {
  Id? id = Isar.autoIncrement;
  String? holidayDate;
  String? holidayName;

  Holiday(this.holidayDate, this.holidayName);

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);
}
