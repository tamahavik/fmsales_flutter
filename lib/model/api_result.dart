import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.g.dart';
part 'api_result.freezed.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult({
    String? message,
    dynamic result,
  }) = _ApiResult;

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);
}
