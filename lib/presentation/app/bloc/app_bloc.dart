import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ufi/enums/sync_enum.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/services/shared_preferences._client.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  SharedPreferencesClient _prefs = SharedPreferencesClient();
  SessionManager _session = SessionManager();

  AppBloc() : super(_Initial()) {
    on<_Started>(_start);
  }

  FutureOr<void> _start(
    _Started event,
    Emitter<AppState> emit,
  ) async {
    int totalSync = SyncEnum.values.length;
    int totalSyncPref = await _prefs.getTotalSync();
    bool isLogin = await _session.getIsLogin();
    if (totalSyncPref >= totalSync && isLogin) {
      emit(const AppState.home());
    } else if (totalSyncPref >= totalSync && !isLogin) {
      emit(const AppState.login());
    } else {
      emit(const AppState.splash());
    }
  }
}
