part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loading() = _Loading;
  const factory SigninState.success() = _Success;
  const factory SigninState.error(String? message) = _Error;
  const factory SigninState.version(String version) = _Version;

  // password textfield
  const factory SigninState.togglePassword(bool visibility) = _TogglePassword;
}
