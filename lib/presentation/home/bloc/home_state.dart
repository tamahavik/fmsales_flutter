part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.fullName(String fullName) = _FullName;
  const factory HomeState.verification() = _Verification;
  const factory HomeState.dialogLogout() = _DialogLogout;
  const factory HomeState.logout() = _Logout;
}
