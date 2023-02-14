import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/services/session_manager.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  SessionManager session;

  HomeBloc({required this.session}) : super(const _Initial()) {
    on<_Started>(_start);
    on<_VerificationMenu>(_verification);
  }

  FutureOr<void> _start(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    String name = await session.getFullName();
    emit(HomeState.fullName(name));
  }

  FutureOr<void> _verification(
    _VerificationMenu event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.initial());
    emit(const HomeState.verification());
  }
}
