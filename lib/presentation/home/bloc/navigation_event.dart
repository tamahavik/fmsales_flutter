part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.started() = _Started;
  const factory NavigationEvent.homeMenu(BottomAppBarEnums index) = _HomeMenu;
  const factory NavigationEvent.historyMenu(BottomAppBarEnums index) = _HistoryMenu;
}
