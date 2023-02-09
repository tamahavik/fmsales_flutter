import 'package:freezed_annotation/freezed_annotation.dart';

part 'kelurahan.freezed.dart';

part 'kelurahan.g.dart';

@freezed
class Kelurahan with _$Kelurahan {
  const factory Kelurahan({
    String? kelCode,
    String? kelurahan,
    String? kecCode,
    String? action,
  }) = _Kelurahan;

  factory Kelurahan.fromJson(Map<String, dynamic> json) => _$KelurahanFromJson(json);
}
