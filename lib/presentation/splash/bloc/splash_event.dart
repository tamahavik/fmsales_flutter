part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.startSync(int value) = _StartSync;
  const factory SplashEvent.tryAgain(int value) = _TryAgain;
}
