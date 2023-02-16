part of 'today_bloc.dart';

@freezed
class TodayState with _$TodayState {
  const factory TodayState.initial() = _Initial;
  const factory TodayState.success(List<Leads> leads) = _Success;
  const factory TodayState.failed() = _Failed;
}
