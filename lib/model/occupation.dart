import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupation.g.dart';
part 'occupation.freezed.dart';

@freezed
class Occupation with _$Occupation {
  const factory Occupation({
    String? occuCode,
    String? occuDesc,
    String? visible,
  }) = _Occupation;

  factory Occupation.fromJson(Map<String, dynamic> json) =>
      _$OccupationFromJson(json);
}
