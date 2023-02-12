// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:ufi/presentation/app/bloc/app_bloc.dart' as _i13;
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart' as _i11;
import 'package:ufi/presentation/signin/service/signin_service.dart' as _i8;
import 'package:ufi/presentation/splash/bloc/splash_bloc.dart' as _i12;
import 'package:ufi/services/session_manager.dart' as _i10;
import 'package:ufi/services/shared_preferences._client.dart' as _i7;
import 'package:ufi/utils/device_info.dart' as _i9;

import 'device_info_inject.dart' as _i16;
import 'dio_inject.dart' as _i15;
import 'package_info_inject.dart' as _i17;
import 'shared_preferences_inject.dart' as _i14;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final deviceInfoInject = _$DeviceInfoInject();
  final dioInject = _$DioInject();
  final packageInfoInject = _$PackageInfoInject();
  final sharedPreferencesInject = _$SharedPreferencesInject();
  gh.lazySingleton<_i3.DeviceInfoPlugin>(() => deviceInfoInject.deviceInfo);
  gh.lazySingleton<_i4.Dio>(() => dioInject.dio);
  await gh.lazySingletonAsync<_i5.PackageInfo>(
    () => packageInfoInject.instance,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i6.SharedPreferences>(
    () => sharedPreferencesInject.instance,
    preResolve: true,
  );
  gh.factory<_i7.SharedPreferencesClient>(
      () => _i7.SharedPreferencesClient(instance: gh<_i6.SharedPreferences>()));
  gh.factory<_i8.SigninService>(() => _i8.SigninService(dio: gh<_i4.Dio>()));
  gh.factory<_i9.DeviceInfo>(() => _i9.DeviceInfo(
        deviceInfo: gh<_i3.DeviceInfoPlugin>(),
        packageInfo: gh<_i5.PackageInfo>(),
      ));
  gh.factory<_i10.SessionManager>(
      () => _i10.SessionManager(instance: gh<_i6.SharedPreferences>()));
  gh.factory<_i11.SigninBloc>(() => _i11.SigninBloc(
        service: gh<_i8.SigninService>(),
        deviceInfo: gh<_i9.DeviceInfo>(),
        session: gh<_i10.SessionManager>(),
      ));
  gh.factory<_i12.SplashBloc>(() => _i12.SplashBloc(
        info: gh<_i9.DeviceInfo>(),
        prefs: gh<_i7.SharedPreferencesClient>(),
        session: gh<_i10.SessionManager>(),
        dio: gh<_i4.Dio>(),
      ));
  gh.factory<_i13.AppBloc>(() => _i13.AppBloc(
        session: gh<_i10.SessionManager>(),
        prefs: gh<_i7.SharedPreferencesClient>(),
      ));
  return getIt;
}

class _$SharedPreferencesInject extends _i14.SharedPreferencesInject {}

class _$DioInject extends _i15.DioInject {}

class _$DeviceInfoInject extends _i16.DeviceInfoInject {}

class _$PackageInfoInject extends _i17.PackageInfoInject {}
