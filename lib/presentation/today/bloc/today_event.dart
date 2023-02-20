part of 'today_bloc.dart';

@freezed
class TodayEvent with _$TodayEvent {
  const factory TodayEvent.started() = _Started;
  const factory TodayEvent.cancelTimer() = _CancelTimer;
  const factory TodayEvent.loadLeads() = _LoadLeads;
  const factory TodayEvent.synchronize() = _Synchronize;
  const factory TodayEvent.pullToRefresh() = _PullToRefresh;
}
