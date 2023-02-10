import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_setup.g.dart';
part 'time_setup.freezed.dart';

@freezed
class TimeSetup with _$TimeSetup {
  const factory TimeSetup({
    String? lob,
    int? endHour,
    int? saturday,
    int? startHour,
  }) = _TimeSetup;

  factory TimeSetup.fromJson(Map<String, dynamic> json) =>
      _$TimeSetupFromJson(json);
}
