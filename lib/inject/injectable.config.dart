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
import 'package:package_info_plus/package_info_plus.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:ufi/presentation/home/bloc/home_bloc.dart' as _i18;
import 'package:ufi/presentation/home/bloc/navigation_bloc.dart' as _i7;
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart' as _i16;
import 'package:ufi/presentation/signin/service/signin_service.dart' as _i12;
import 'package:ufi/presentation/splash/bloc/splash_bloc.dart' as _i17;
import 'package:ufi/presentation/splash/service/api_sync_service.dart' as _i13;
import 'package:ufi/presentation/splash/service/file_sync_service.dart' as _i5;
import 'package:ufi/services/session_manager.dart' as _i15;
import 'package:ufi/services/shared_preferences._client.dart' as _i11;
import 'package:ufi/utils/device_info.dart' as _i14;
import 'package:ufi/utils/permission_request.dart' as _i9;

import 'device_info_plugin_inject.dart' as _i19;
import 'dio_inject.dart' as _i20;
import 'isar_inject.dart' as _i21;
import 'package_info_inject.dart' as _i22;
import 'shared_preferences_inject.dart' as _i23;

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
  gh.factory<_i7.NavigationBloc>(() => _i7.NavigationBloc());
  await gh.singletonAsync<_i8.PackageInfo>(
    () => packageInfoInject.packageInfo,
    preResolve: true,
  );
  gh.factory<_i9.PermissionRequest>(() => _i9.PermissionRequest());
  await gh.singletonAsync<_i10.SharedPreferences>(
    () => sharedPreferencesInject.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i11.SharedPreferencesClient>(() =>
      _i11.SharedPreferencesClient(instance: gh<_i10.SharedPreferences>()));
  gh.factory<_i12.SigninService>(() => _i12.SigninService(dio: gh<_i4.Dio>()));
  gh.factory<_i13.ApiSyncService>(
      () => _i13.ApiSyncService(dio: gh<_i4.Dio>()));
  gh.factory<_i14.DeviceInfo>(() => _i14.DeviceInfo(
        deviceInfo: gh<_i3.DeviceInfoPlugin>(),
        packageInfo: gh<_i8.PackageInfo>(),
      ));
  gh.factory<_i15.SessionManager>(
      () => _i15.SessionManager(instance: gh<_i10.SharedPreferences>()));
  gh.factory<_i16.SigninBloc>(() => _i16.SigninBloc(
        service: gh<_i12.SigninService>(),
        deviceInfo: gh<_i14.DeviceInfo>(),
        session: gh<_i15.SessionManager>(),
        permission: gh<_i9.PermissionRequest>(),
      ));
  gh.factory<_i17.SplashBloc>(() => _i17.SplashBloc(
        info: gh<_i14.DeviceInfo>(),
        prefs: gh<_i11.SharedPreferencesClient>(),
        session: gh<_i15.SessionManager>(),
        dio: gh<_i4.Dio>(),
        isar: gh<_i6.Isar>(),
        apiSyncService: gh<_i13.ApiSyncService>(),
        fileSyncService: gh<_i5.FileSyncService>(),
      ));
  gh.factory<_i18.HomeBloc>(
      () => _i18.HomeBloc(session: gh<_i15.SessionManager>()));
  return getIt;
}

class _$DeviceInfoPluginInject extends _i19.DeviceInfoPluginInject {}

class _$DioInject extends _i20.DioInject {}

class _$IsarInject extends _i21.IsarInject {}

class _$PackageInfoInject extends _i22.PackageInfoInject {}

class _$SharedPreferencesInject extends _i23.SharedPreferencesInject {}
