import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ufi/presentation/splash/service/version_app_sync.dart';
import 'package:ufi/utils/device_info.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  DeviceInfo _info = DeviceInfo();

  SplashBloc() : super(const _Initial()) {
    on<_StartSync>(_process);
    on<_VersionApp>(_versionApp);
    on<_Lov>(_lov);
    on<_TryAgain>(_retry);
  }

  Future<void> _process(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    add(_VersionApp(event.value));
  }

  FutureOr<void> _versionApp(
    _VersionApp event,
    Emitter<SplashState> emit,
  ) async {
    VersionAppSync appSync = VersionAppSync();
    try {
      var version = await appSync.process();
      String ver = await _info.getVersion();
      version.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          if (r.value == "1.3.0") {
            emit(SplashState.successSync(event.value + 1));
            add(SplashEvent.lov(event.value + 1));
          } else {
            emit(SplashState.failedSync("Version", "Version Tidak sama"));
          }
        },
      );
    } catch (e) {
      emit(SplashState.failedSync("Error", "terjadi kesalahan"));
    }
  }

  FutureOr<void> _lov(
    _Lov event,
    Emitter<SplashState> emit,
  ) async {
    print("im here baby");
  }

  Future<void> _retry(
    _TryAgain event,
    Emitter<SplashState> emit,
  ) async {}
}
