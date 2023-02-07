part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.started() = _Started;
  const factory SplashEvent.startSync(int value) = _StartSync;
  const factory SplashEvent.versionApp(int value) = _VersionApp;
  const factory SplashEvent.lov(int value) = _Lov;
  const factory SplashEvent.occupation(int value) = _Occupation;
  const factory SplashEvent.subOccupation(int value) = _SubOccupation;
  const factory SplashEvent.category(int value) = _Category;
  const factory SplashEvent.model(int value) = _Model;
  const factory SplashEvent.province(int value) = _Province;
  const factory SplashEvent.city(int value) = _City;
  const factory SplashEvent.kecamatan(int value) = _Kecamatan;
  const factory SplashEvent.kelurahan(int value) = _Kelurahan;
  const factory SplashEvent.zipCode(int value) = _ZipCode;
  const factory SplashEvent.slaOpportunity(int value) = _SlaOpportunity;
  const factory SplashEvent.priorityLeads(int value) = _PriorityLeads;
  const factory SplashEvent.parameterPriority(int value) = _ParameterPriority;
  const factory SplashEvent.slaColor(int value) = _SlaColor;
  const factory SplashEvent.holiday(int value) = _Holiday;
  const factory SplashEvent.timeSetup(int value) = _TimeSetup;
  const factory SplashEvent.startEndLocation(int value) = _StartEndLocation;
  const factory SplashEvent.intervalLocation(int value) = _IntervalLocation;
  const factory SplashEvent.tryAgain() = _TryAgain;
}
