import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_occupation.g.dart';
part 'sub_occupation.freezed.dart';

@freezed
class SubOccupation with _$SubOccupation {
  const factory SubOccupation({
    String? occuSubCode,
    String? occuSubDesc,
    String? visible,
    String? occuCode,
  }) = _SubOccupation;

  factory SubOccupation.fromJson(Map<String, dynamic> json) =>
      _$SubOccupationFromJson(json);
}
