import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_response.g.dart';
part 'signin_response.freezed.dart';

@freezed
class SigninResponse with _$SigninResponse {
  const factory SigninResponse({
    String? token,
    String? refreshToken,
    String? message,
    String? userId,
    String? fullName,
    String? jobGroup,
    String? branchCode,
    String? branchName,
    String? serviceOfficeCode,
    String? serviceOfficeName,
    bool? daf,
    String? flagActive,
    String? employeeNumber,
    String? loginPhone,
    int? timeDiff,
  }) = _SigninResponse;

  factory SigninResponse.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseFromJson(json);
}
