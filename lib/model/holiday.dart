import 'package:freezed_annotation/freezed_annotation.dart';

part 'holiday.g.dart';
part 'holiday.freezed.dart';

@freezed
class Holiday with _$Holiday {
  const factory Holiday({
    String? holidayDate,
    String? holidayName,
  }) = _Holiday;

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);
}
