import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:ufi/enums/logout_enum.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/model/status_leads_open.dart';
import 'package:ufi/presentation/today/repository/today_repository.dart';
import 'package:ufi/repository/logout_repository.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/utils/device_info.dart';
import 'package:ufi/utils/periodic_timer.dart';

part 'today_bloc.freezed.dart';

part 'today_event.dart';

part 'today_state.dart';

@injectable
class TodayBloc extends Bloc<TodayEvent, TodayState> {
  final TodayRepository _todayRepository;
  final LogoutRepository _logoutRepository;
  final SessionManager _session;
  final DeviceInfo _deviceInfo;
  final Isar _isar;
  Timer? timer;

  TodayBloc({
    required TodayRepository todayRepository,
    required LogoutRepository logoutRepository,
    required SessionManager session,
    required DeviceInfo deviceInfo,
    required Isar isar,
  })  : _todayRepository = todayRepository,
        _logoutRepository = logoutRepository,
        _session = session,
        _deviceInfo = deviceInfo,
        _isar = isar,
        super(const TodayState.initial()) {
    on<_Started>(_init);
    on<_CancelTimer>(_cancelTimer);
  }

  FutureOr<void> _init(
    _Started event,
    Emitter<TodayState> emit,
  ) async {
    try {
      timer = makePeriodicCall(
        const Duration(seconds: 10),
        (timer) async {
          await _backgroundProcess();
        },
        fireNow: event.fireNow,
      );
    } catch (e) {
      print(e);
    }
  }

  FutureOr<void> _cancelTimer(
    _CancelTimer event,
    Emitter<TodayState> emit,
  ) {
    timer?.cancel();
  }

  Future<void> _backgroundProcess() async {
    String employeeNumber = _session.getEmployeeNumber();
    String deviceId = await _deviceInfo.getDeviceId();
    var login = await _todayRepository.checkLogin(employeeNumber, deviceId);
    await login.fold(
      (l) async => {},
      (r) async {
        if (r) {
          await _isar.leads.clear();
          await _logoutRepository.doLogout(LogoutEnum.FORCE);
        } else {
          await _pushStatusLeads();
        }
      },
    );
  }

  Future<void> _pushStatusLeads() async {
    List<StatusLeadsOpen> list = await _isar.statusLeadsOpens.where().findAll();
    for (var element in list) {
      bool success = await _todayRepository.pushStatus(element);
      if (success) {
        await _isar.statusLeadsOpens.delete(element.id ?? 0);
      }
    }
  }

  Future<void> _distribution() async {
    String employeeNumber = _session.getEmployeeNumber();
    var distribution = await _todayRepository.getDistribution(employeeNumber);
    distribution.fold(
      (l) => print(l),
      (r) => print('this is ' + r.toString()),
    );
  }

  Future<void> _pushDataLeads() async {
    List<Leads> completed =
        await _isar.leads.filter().flagEqualTo('C').findAll();
    List<Leads> expired = await _isar.leads
        .filter()
        .flagEqualTo('C')
        .expiredDateLessThan(DateTime.now().millisecondsSinceEpoch)
        .findAll();
    var leads = [...completed, ...expired];
    for (var element in leads) {
      var res = await _todayRepository.pushDataLeads(element);
      res.fold(
        (l) => print(l),
        (r) => print(r),
      );
    }
  }

  @override
  Future<void> close() async {
    super.close();
    timer?.cancel();
    print('getFixtureById timer is cancelled');
  }
}
