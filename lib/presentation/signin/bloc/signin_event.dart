part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.started() = _Started;
  const factory SigninEvent.login({
    required String username,
    required String password,
  }) = _Login;
  const factory SigninEvent.handlePassword(bool visibility) = _HandlePassword;
}
