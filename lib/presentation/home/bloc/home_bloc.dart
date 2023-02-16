import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/enums/logout_enum.dart';
import 'package:ufi/repository/logout_repository.dart';
import 'package:ufi/services/session_manager.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SessionManager _session;
  final LogoutRepository _logoutRepository;

  HomeBloc({
    required SessionManager session,
    required LogoutRepository logoutRepository,
  })  : _session = session,
        _logoutRepository = logoutRepository,
        super(const _Initial()) {
    on<_Started>(_start);
    on<_VerificationMenu>(_verification);
    on<_HandleLogut>(_handleLogout);
    on<_ShowDialogLogout>(_showDialogLogout);
  }

  FutureOr<void> _start(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    String name = await _session.getFullName();
    emit(HomeState.fullName(name));
  }

  FutureOr<void> _verification(
    _VerificationMenu event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.initial());
    emit(const HomeState.verification());
  }

  FutureOr<void> _handleLogout(
    _HandleLogut event,
    Emitter<HomeState> emit,
  ) async {
    var logout = await _logoutRepository.doLogout(LogoutEnum.USER);
    await logout.fold((l) async {
      await _session.setIsLogin(false);
      emit(const HomeState.logout());
    }, (r) async {
      await _session.setIsLogin(false);
      emit(const HomeState.logout());
    });
  }

  FutureOr<void> _showDialogLogout(
    _ShowDialogLogout event,
    Emitter<HomeState> emit,
  ) {
    emit(const HomeState.initial());
    emit(const HomeState.dialogLogout());
  }
}
