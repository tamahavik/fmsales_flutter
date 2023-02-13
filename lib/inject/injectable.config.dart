// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:package_info_plus/package_info_plus.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart' as _i13;
import 'package:ufi/presentation/signin/service/signin_service.dart' as _i9;
import 'package:ufi/presentation/splash/bloc/splash_bloc.dart' as _i14;
import 'package:ufi/presentation/splash/service/sync_version_app.dart' as _i10;
import 'package:ufi/services/session_manager.dart' as _i12;
import 'package:ufi/services/shared_preferences._client.dart' as _i8;
import 'package:ufi/utils/device_info.dart' as _i11;

import 'device_info_plugin_inject.dart' as _i15;
import 'dio_inject.dart' as _i16;
import 'isar_inject.dart' as _i17;
import 'package_info_inject.dart' as _i18;
import 'shared_preferences_inject.dart' as _i19;

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
  final deviceInfoPluginInject = _$DeviceInfoPluginInject();
  final dioInject = _$DioInject();
  final isarInject = _$IsarInject();
  final packageInfoInject = _$PackageInfoInject();
  final sharedPreferencesInject = _$SharedPreferencesInject();
  gh.singleton<_i3.DeviceInfoPlugin>(deviceInfoPluginInject.deviceInfo);
  gh.singleton<_i4.Dio>(dioInject.dio);
  await gh.singletonAsync<_i5.Isar>(
    () => isarInject.isar,
    preResolve: true,
  );
  await gh.singletonAsync<_i6.PackageInfo>(
    () => packageInfoInject.packageInfo,
    preResolve: true,
  );
  await gh.singletonAsync<_i7.SharedPreferences>(
    () => sharedPreferencesInject.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i8.SharedPreferencesClient>(
      () => _i8.SharedPreferencesClient(instance: gh<_i7.SharedPreferences>()));
  gh.factory<_i9.SigninService>(() => _i9.SigninService(dio: gh<_i4.Dio>()));
  gh.factory<_i10.SyncVersionApp>(
      () => _i10.SyncVersionApp(dio: gh<_i4.Dio>()));
  gh.factory<_i11.DeviceInfo>(() => _i11.DeviceInfo(
        deviceInfo: gh<_i3.DeviceInfoPlugin>(),
        packageInfo: gh<_i6.PackageInfo>(),
      ));
  gh.factory<_i12.SessionManager>(
      () => _i12.SessionManager(instance: gh<_i7.SharedPreferences>()));
  gh.factory<_i13.SigninBloc>(() => _i13.SigninBloc(
        service: gh<_i9.SigninService>(),
        deviceInfo: gh<_i11.DeviceInfo>(),
        session: gh<_i12.SessionManager>(),
      ));
  gh.factory<_i14.SplashBloc>(() => _i14.SplashBloc(
        info: gh<_i11.DeviceInfo>(),
        prefs: gh<_i8.SharedPreferencesClient>(),
        session: gh<_i12.SessionManager>(),
        dio: gh<_i4.Dio>(),
        isar: gh<_i5.Isar>(),
      ));
  return getIt;
}

class _$DeviceInfoPluginInject extends _i15.DeviceInfoPluginInject {}

class _$DioInject extends _i16.DioInject {}

class _$IsarInject extends _i17.IsarInject {}

class _$PackageInfoInject extends _i18.PackageInfoInject {}

class _$SharedPreferencesInject extends _i19.SharedPreferencesInject {}
