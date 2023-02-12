import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_setup.g.dart';

@JsonSerializable()
@collection
class TimeSetup {
  Id? id = Isar.autoIncrement;
  String? lob;
  int? endHour;
  int? saturday;
  int? startHour;

  TimeSetup(this.lob, this.endHour, this.saturday, this.startHour);

  factory TimeSetup.fromJson(Map<String, dynamic> json) =>
      _$TimeSetupFromJson(json);
}
