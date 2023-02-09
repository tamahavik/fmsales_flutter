import 'package:freezed_annotation/freezed_annotation.dart';

part 'province.g.dart';
part 'province.freezed.dart';

@freezed
class Province with _$Province {
  const factory Province({
    String? provCode,
    String? provinsi,
    String? action,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}
