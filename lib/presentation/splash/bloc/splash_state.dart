part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.continueSync(int value) = _ContinueSync;
  const factory SplashState.failedSync(String title, String message) =
      _failedSync;
  const factory SplashState.completedSync(bool isLogin) = _CompletedSync;
}
