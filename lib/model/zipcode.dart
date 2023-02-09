import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcode.freezed.dart';

part 'zipcode.g.dart';

@freezed
class ZipCode with _$ZipCode {
  const factory ZipCode({
    String? zipCode,
    String? subZipCode,
    String? zipDesc,
    String? provCode,
    String? cityCode,
    String? kecCode,
    String? kelCode,
    String? createBy,
    DateTime? createDate,
    String? updateBy,
    DateTime? updateDate,
    String? action,
  }) = _ZipCode;

  factory ZipCode.fromJson(Map<String, dynamic> json) =>
      _$ZipCodeFromJson(json);
}
