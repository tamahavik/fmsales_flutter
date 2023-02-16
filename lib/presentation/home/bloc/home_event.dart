part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.verificationMenu() = _VerificationMenu;
  const factory HomeEvent.handleLogout() = _HandleLogut;
  const factory HomeEvent.showDialogLogout() = _ShowDialogLogout;
}
