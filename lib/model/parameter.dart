import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter.g.dart';
part 'parameter.freezed.dart';

@freezed
class Parameter with _$Parameter {
  const factory Parameter({
    String? id,
    int? version,
    String? startDate,
    String? endDate,
    String? name,
    String? value,
    String? satuan,
    String? description,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}
