// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:package_info_plus/package_info_plus.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i8;
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart' as _i14;
import 'package:ufi/presentation/signin/service/signin_service.dart' as _i10;
import 'package:ufi/presentation/splash/bloc/splash_bloc.dart' as _i15;
import 'package:ufi/presentation/splash/service/api_sync_service.dart' as _i11;
import 'package:ufi/presentation/splash/service/file_sync_service.dart' as _i5;
import 'package:ufi/services/session_manager.dart' as _i13;
import 'package:ufi/services/shared_preferences._client.dart' as _i9;
import 'package:ufi/utils/device_info.dart' as _i12;

import 'device_info_plugin_inject.dart' as _i16;
import 'dio_inject.dart' as _i17;
import 'isar_inject.dart' as _i18;
import 'package_info_inject.dart' as _i19;
import 'shared_preferences_inject.dart' as _i20;

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
  gh.factory<_i5.FileSyncService>(() => _i5.FileSyncService());
  await gh.singletonAsync<_i6.Isar>(
    () => isarInject.isar,
    preResolve: true,
  );
  await gh.singletonAsync<_i7.PackageInfo>(
    () => packageInfoInject.packageInfo,
    preResolve: true,
  );
  await gh.singletonAsync<_i8.SharedPreferences>(
    () => sharedPreferencesInject.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i9.SharedPreferencesClient>(
      () => _i9.SharedPreferencesClient(instance: gh<_i8.SharedPreferences>()));
  gh.factory<_i10.SigninService>(() => _i10.SigninService(dio: gh<_i4.Dio>()));
  gh.factory<_i11.ApiSyncService>(
      () => _i11.ApiSyncService(dio: gh<_i4.Dio>()));
  gh.factory<_i12.DeviceInfo>(() => _i12.DeviceInfo(
        deviceInfo: gh<_i3.DeviceInfoPlugin>(),
        packageInfo: gh<_i7.PackageInfo>(),
      ));
  gh.factory<_i13.SessionManager>(
      () => _i13.SessionManager(instance: gh<_i8.SharedPreferences>()));
  gh.factory<_i14.SigninBloc>(() => _i14.SigninBloc(
        service: gh<_i10.SigninService>(),
        deviceInfo: gh<_i12.DeviceInfo>(),
        session: gh<_i13.SessionManager>(),
      ));
  gh.factory<_i15.SplashBloc>(() => _i15.SplashBloc(
        info: gh<_i12.DeviceInfo>(),
        prefs: gh<_i9.SharedPreferencesClient>(),
        session: gh<_i13.SessionManager>(),
        dio: gh<_i4.Dio>(),
        isar: gh<_i6.Isar>(),
        apiSyncService: gh<_i11.ApiSyncService>(),
        fileSyncService: gh<_i5.FileSyncService>(),
      ));
  return getIt;
}

class _$DeviceInfoPluginInject extends _i16.DeviceInfoPluginInject {}

class _$DioInject extends _i17.DioInject {}

class _$IsarInject extends _i18.IsarInject {}

class _$PackageInfoInject extends _i19.PackageInfoInject {}

class _$SharedPreferencesInject extends _i20.SharedPreferencesInject {}
