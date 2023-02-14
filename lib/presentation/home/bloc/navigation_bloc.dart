import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/enums/bottom_appbar_enum.dart';

part 'navigation_bloc.freezed.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

@injectable
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState.initial()) {
    on<_Started>(_started);
    on<_HomeMenu>(_homeMenu);
    on<_HistoryMenu>(_historyMenu);
  }

  FutureOr<void> _started(
    _Started event,
    Emitter<NavigationState> emit,
  ) {
    emit(const NavigationState.home());
  }

  FutureOr<void> _homeMenu(
    _HomeMenu event,
    Emitter<NavigationState> emit,
  ) {
    if (event.index != BottomAppBarEnums.home) {
      emit(const NavigationState.home());
    }
  }

  FutureOr<void> _historyMenu(
    _HistoryMenu event,
    Emitter<NavigationState> emit,
  ) {
    if (event.index != BottomAppBarEnums.history) {
      emit(const NavigationState.history());
    }
  }
}
