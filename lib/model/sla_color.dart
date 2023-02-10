import 'package:freezed_annotation/freezed_annotation.dart';

part 'sla_color.g.dart';
part 'sla_color.freezed.dart';

@freezed
class SlaColor with _$SlaColor {
  const factory SlaColor({
    String? id,
    String? sourceLeads,
    int? timeStart,
    int? timeEnd,
    String? colorCode,
    String? sourceIdVisum,
  }) = _SlaColor;

  factory SlaColor.fromJson(Map<String, dynamic> json) =>
      _$SlaColorFromJson(json);
}
