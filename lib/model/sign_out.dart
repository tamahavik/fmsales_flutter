import 'package:json_annotation/json_annotation.dart';
import 'package:ufi/enums/logout_enum.dart';

part 'sign_out.g.dart';

@JsonSerializable()
class SignOut {
  String? token;
  String? employeeId;
  LogoutEnum source;

  SignOut(this.token, this.employeeId, this.source);

  factory SignOut.fromJson(Map<String, dynamic> json) =>
      _$SignOutFromJson(json);

  Map<String, dynamic> toJson() => _$SignOutToJson(this);
}
