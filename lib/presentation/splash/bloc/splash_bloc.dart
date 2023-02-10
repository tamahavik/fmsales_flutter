import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:ufi/presentation/splash/service/sync_category.dart';
import 'package:ufi/presentation/splash/service/sync_city.dart';
import 'package:ufi/presentation/splash/service/sync_holiday.dart';
import 'package:ufi/presentation/splash/service/sync_interval_location.dart';
import 'package:ufi/presentation/splash/service/sync_kecamatan.dart';
import 'package:ufi/presentation/splash/service/sync_kelurahan.dart';
import 'package:ufi/presentation/splash/service/sync_lov.dart';
import 'package:ufi/presentation/splash/service/sync_model.dart';
import 'package:ufi/presentation/splash/service/sync_occupation.dart';
import 'package:ufi/presentation/splash/service/sync_priority_leads.dart';
import 'package:ufi/presentation/splash/service/sync_province.dart';
import 'package:ufi/presentation/splash/service/sync_sla_color.dart';
import 'package:ufi/presentation/splash/service/sync_sla_opportunity.dart';
import 'package:ufi/presentation/splash/service/sync_start_end_location.dart';
import 'package:ufi/presentation/splash/service/sync_sub_occupation.dart';
import 'package:ufi/presentation/splash/service/sync_time_setup.dart';
import 'package:ufi/presentation/splash/service/sync_version_app.dart';
import 'package:ufi/presentation/splash/service/sync_zipcode.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/services/shared_preferences._client.dart';
import 'package:ufi/utils/device_info.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final DeviceInfo _info = DeviceInfo();
  final SharedPreferencesClient _prefs = SharedPreferencesClient();
  final SessionManager _session = SessionManager();

  SplashBloc() : super(const _Initial()) {
    on<_StartSync>(_process);
    on<_TryAgain>(_retry);
  }

  Future<void> _process(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    switch (event.value) {
      case 0:
        await _versionApp(event, emit);
        break;
      case 1:
        await _lov(event, emit);
        break;
      case 2:
        await _occupation(event, emit);
        break;
      case 3:
        await _subOccupation(event, emit);
        break;
      case 4:
        await _category(event, emit);
        break;
      case 5:
        await _model(event, emit);
        break;
      case 6:
        await _province(event, emit);
        break;
      case 7:
        await _city(event, emit);
        break;
      case 8:
        await _kecamatan(event, emit);
        break;
      case 9:
        await _kelurahan(event, emit);
        break;
      case 10:
        await _zipCode(event, emit);
        break;
      case 11:
        await _slaOpportunity(event, emit);
        break;
      case 12:
        await _priorityLeads(event, emit);
        break;
      case 13:
        await _slaColor(event, emit);
        break;
      case 14:
        await _holiday(event, emit);
        break;
      case 15:
        await _timeSetup(event, emit);
        break;
      case 16:
        await _startEndLocation(event, emit);
        break;
      case 17:
        await _intervalLocation(event, emit);
        break;
      default:
        await _default(event, emit);
    }
  }

  Future<void> _retry(
    _TryAgain event,
    Emitter<SplashState> emit,
  ) async {}

  FutureOr<void> _versionApp(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getAppVersionSync()) {
      SyncVersionApp appSync = SyncVersionApp();
      var version = await appSync.process();
      String ver = await _info.getVersion();
      version.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          if (r.value == "1.3.0") {
            _prefs.setAppVersionSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          } else {
            emit(SplashState.failedSync("Version", "Version Tidak sama"));
          }
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _lov(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getLovSync()) {
      SyncLov syncLov = SyncLov();
      var data = await syncLov.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setLovSync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _occupation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    SyncOccupation occuSync = SyncOccupation();
    int next = event.value + 1;
    if (!await _prefs.getOccupationSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await occuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setOccupationSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await occuSync.process();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setOccupationSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _subOccupation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncSubOccupation subOccuSync = SyncSubOccupation();
    if (!await _prefs.getSubOccupationSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await subOccuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setSubOccupationSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await subOccuSync.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setSubOccupationSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _category(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncCategory syncCategory = SyncCategory();
    if (!await _prefs.getCategorySync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncCategory.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setCategorySync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await syncCategory.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setSubOccupationSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _model(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncModel syncModel = SyncModel();
    if (!await _prefs.getModelSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncModel.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setModelSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await syncModel.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setModelSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _province(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncProvince syncProvince = SyncProvince();
    if (!await _prefs.getProvinceSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncProvince.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setProvinceSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await _session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncProvince.process(formatter.format(DateTime.now()));
        } else {
          data = await syncProvince.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setProvinceSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _city(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncCity syncCity = SyncCity();
    if (!await _prefs.getCitySync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncCity.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setCitySync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await _session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncCity.process(formatter.format(DateTime.now()));
        } else {
          data = await syncCity.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setCitySync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _kecamatan(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncKecamatan syncKecamatan = SyncKecamatan();
    if (!await _prefs.getKecamatanSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncKecamatan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setKecamatanSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await _session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncKecamatan.process(formatter.format(DateTime.now()));
        } else {
          data = await syncKecamatan.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setKecamatanSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _kelurahan(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncKelurahan syncKelurahan = SyncKelurahan();
    if (!await _prefs.getKelurahanSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncKelurahan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setKelurahanSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await _session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncKelurahan.process(formatter.format(DateTime.now()));
        } else {
          data = await syncKelurahan.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setKelurahanSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _zipCode(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncZipCode syncZipCode = SyncZipCode();
    if (!await _prefs.getZipCodeSync()) {
      if (await _prefs.getFirstOpen()) {
        var data = await syncZipCode.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefs.setZipCodeSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await _session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncZipCode.process(formatter.format(DateTime.now()));
        } else {
          data = await syncZipCode.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefs.setZipCodeSync(true);
            _prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      }
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _slaOpportunity(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getSlaOpportunitySync()) {
      SyncSlaOpportunity slaOpportunity = SyncSlaOpportunity();
      var data = await slaOpportunity.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setSlaOpportunitySync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _priorityLeads(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getPriorityLeadsSync()) {
      SyncPriortyLeads synPriorityLeads = SyncPriortyLeads();
      var data = await synPriorityLeads.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setSlaOpportunitySync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _slaColor(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getSlaColorSync()) {
      SyncSlaColor syncSlaColor = SyncSlaColor();
      var data = await syncSlaColor.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setSlaColorSync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _holiday(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getHolidaySync()) {
      SyncHoliday syncHoliday = SyncHoliday();
      var data = await syncHoliday.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setHolidaySync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _timeSetup(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getTimeSetupSync()) {
      SyncTimeSetup syncTimeSetup = SyncTimeSetup();
      var data = await syncTimeSetup.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setTimeSetupSync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _startEndLocation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getStartEndLocationSync()) {
      SyncStartEndLocation startEndLocation = SyncStartEndLocation();
      var data = await startEndLocation.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setStartEndLocationSync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  FutureOr<void> _intervalLocation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefs.getIntervalLocationSync()) {
      SyncIntervalLocation intervalLocation = SyncIntervalLocation();
      var data = await intervalLocation.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefs.setIntervalLocationSync(true);
          _prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      emit(SplashState.continueSync(next));
    }
  }

  _default(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    bool isLogin = await _session.getIsLogin();
    print(await _prefs.getTotalSync());
    emit(SplashState.completedSync(isLogin));
  }
}
