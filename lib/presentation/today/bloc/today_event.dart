part of 'today_bloc.dart';

@freezed
class TodayEvent with _$TodayEvent {
  const factory TodayEvent.started(bool fireNow) = _Started;
  const factory TodayEvent.cancelTimer() = _CancelTimer;
}
