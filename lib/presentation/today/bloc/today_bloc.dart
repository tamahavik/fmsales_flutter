import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/database/master_database.dart';
import 'package:ufi/enums/logout_enum.dart';
import 'package:ufi/model/leads.dart';
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
  final MasterDatabase _db;
  Timer? timer;

  TodayBloc({
    required TodayRepository todayRepository,
    required LogoutRepository logoutRepository,
    required SessionManager session,
    required DeviceInfo deviceInfo,
    required MasterDatabase masterDatabase,
  })  : _todayRepository = todayRepository,
        _logoutRepository = logoutRepository,
        _session = session,
        _deviceInfo = deviceInfo,
        _db = masterDatabase,
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
        fireNow: true,
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
          await _db.deleteAllLeads();
          await _logoutRepository.doLogout(LogoutEnum.FORCE);
        } else {
          await _distribution();
        }
      },
    );
  }

  Future<void> _distribution() async {
    String employeeNumber = _session.getEmployeeNumber();
    var distribution = await _todayRepository.getDistribution(employeeNumber);
    await distribution.fold(
      (l) async => print('failed to get distribution leads from server'),
      (r) async {
        for (var obj in r) {
          Leads? leads = await _db.findByEnhLeadIdAndDataSource(
              obj.enhLeadId, obj.dataSource);
          if (leads != null) {
            obj.id = leads.id;
          }
          await _db.saveLeads(obj);
        }
      },
    );
  }

  @override
  Future<void> close() async {
    super.close();
    timer?.cancel();
  }
}
