import 'package:freezed_annotation/freezed_annotation.dart';

part 'kecamatan.freezed.dart';

part 'kecamatan.g.dart';

@freezed
class Kecamatan with _$Kecamatan {
  const factory Kecamatan({
    String? kecCode,
    String? kecamatan,
    String? cityCode,
    String? action,
  }) = _Kecamatan;

  factory Kecamatan.fromJson(Map<String, dynamic> json) => _$KecamatanFromJson(json);
}
