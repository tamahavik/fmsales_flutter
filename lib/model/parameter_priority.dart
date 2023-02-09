import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter_priority.freezed.dart';

part 'parameter_priority.g.dart';

@freezed
class ParameterPriority with _$ParameterPriority {
  const factory ParameterPriority({
    int? id,
    String? name,
    String? refCode,
    int? limitDate,
  }) = _ParameterPriority;

  factory ParameterPriority.fromJson(Map<String, dynamic> json) =>
      _$ParameterPriorityFromJson(json);
}
