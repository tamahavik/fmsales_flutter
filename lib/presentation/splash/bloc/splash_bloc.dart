import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:ufi/model/category.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/holiday.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/model.dart';
import 'package:ufi/model/occupation.dart';
import 'package:ufi/model/parameter.dart';
import 'package:ufi/model/priority_leads.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/model/sla_color.dart';
import 'package:ufi/model/sub_occupation.dart';
import 'package:ufi/model/time_setup.dart';
import 'package:ufi/model/zipcode.dart';
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

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final DeviceInfo info;
  final SharedPreferencesClient prefs;
  final SessionManager session;
  final Dio dio;
  final Isar isar;

  SplashBloc({
    required this.info,
    required this.prefs,
    required this.session,
    required this.dio,
    required this.isar,
  }) : super(const _Initial()) {
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
    if (!await prefs.getAppVersionSync()) {
      SyncVersionApp appSync = SyncVersionApp(dio: dio);
      var version = await appSync.process();
      String ver = await info.getVersion();
      version.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          //TODO change this hardcode value
          if (r.value == "1.3.0") {
            prefs.setAppVersionSync(true);
            prefs.setTotalSync(next);
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
    if (!await prefs.getLovSync()) {
      SyncLov syncLov = SyncLov(dio: dio);
      var data = await syncLov.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.parameters.putAll(r));
          prefs.setLovSync(true);
          prefs.setTotalSync(next);
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
    SyncOccupation occuSync = SyncOccupation(dio: dio);
    int next = event.value + 1;
    if (!await prefs.getOccupationSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await occuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.occupations.putAll(r));
            prefs.setOccupationSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await occuSync.process();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.occupations.putAll(r));
            prefs.setOccupationSync(true);
            prefs.setTotalSync(next);
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
    SyncSubOccupation subOccuSync = SyncSubOccupation(dio: dio);
    if (!await prefs.getSubOccupationSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await subOccuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.subOccupations.putAll(r));
            prefs.setSubOccupationSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await subOccuSync.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.subOccupations.putAll(r));
            prefs.setSubOccupationSync(true);
            prefs.setTotalSync(next);
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
    SyncCategory syncCategory = SyncCategory(dio: dio);
    if (!await prefs.getCategorySync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncCategory.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.categorys.putAll(r));
            prefs.setCategorySync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await syncCategory.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.categorys.putAll(r));
            prefs.setSubOccupationSync(true);
            prefs.setTotalSync(next);
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
    SyncModel syncModel = SyncModel(dio: dio);
    if (!await prefs.getModelSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncModel.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.models.putAll(r));
            prefs.setModelSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data = await syncModel.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.models.putAll(r));
            prefs.setModelSync(true);
            prefs.setTotalSync(next);
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
    SyncProvince syncProvince = SyncProvince(dio: dio);
    if (!await prefs.getProvinceSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncProvince.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.provinces.putAll(r));
            prefs.setProvinceSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncProvince.process(formatter.format(DateTime.now()));
        } else {
          data = await syncProvince.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.provinces.putAll(r));
            prefs.setProvinceSync(true);
            prefs.setTotalSync(next);
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
    SyncCity syncCity = SyncCity(dio: dio);
    if (!await prefs.getCitySync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncCity.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.citys.putAll(r));
            prefs.setCitySync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncCity.process(formatter.format(DateTime.now()));
        } else {
          data = await syncCity.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.citys.putAll(r));
            prefs.setCitySync(true);
            prefs.setTotalSync(next);
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
    SyncKecamatan syncKecamatan = SyncKecamatan(dio: dio);
    if (!await prefs.getKecamatanSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncKecamatan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.kecamatans.putAll(r));
            prefs.setKecamatanSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncKecamatan.process(formatter.format(DateTime.now()));
        } else {
          data = await syncKecamatan.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.kecamatans.putAll(r));
            prefs.setKecamatanSync(true);
            prefs.setTotalSync(next);
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
    SyncKelurahan syncKelurahan = SyncKelurahan(dio: dio);
    if (!await prefs.getKelurahanSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncKelurahan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.kelurahans.putAll(r));
            prefs.setKelurahanSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncKelurahan.process(formatter.format(DateTime.now()));
        } else {
          data = await syncKelurahan.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.kelurahans.putAll(r));
            prefs.setKelurahanSync(true);
            prefs.setTotalSync(next);
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
    SyncZipCode syncZipCode = SyncZipCode(dio: dio);
    if (!await prefs.getZipCodeSync()) {
      if (await prefs.getFirstOpen()) {
        var data = await syncZipCode.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            isar.writeTxn(() async => await isar.zipCodes.putAll(r));
            prefs.setZipCodeSync(true);
            prefs.setTotalSync(next);
            emit(SplashState.continueSync(next));
          },
        );
      } else {
        var data;
        String lastLogin = await session.getLastLoginDate();
        if (lastLogin == "") {
          DateFormat formatter = DateFormat("dd-MMM-yyyy");
          data = await syncZipCode.process(formatter.format(DateTime.now()));
        } else {
          data = await syncZipCode.process(lastLogin);
        }
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            isar.writeTxn(() async => await isar.zipCodes.putAll(r));
            prefs.setZipCodeSync(true);
            prefs.setTotalSync(next);
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
    if (!await prefs.getSlaOpportunitySync()) {
      SyncSlaOpportunity slaOpportunity = SyncSlaOpportunity(dio: dio);
      var data = await slaOpportunity.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.parameters.put(r));
          prefs.setSlaOpportunitySync(true);
          prefs.setTotalSync(next);
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
    if (!await prefs.getPriorityLeadsSync()) {
      SyncPriortyLeads synPriorityLeads = SyncPriortyLeads(dio: dio);
      var data = await synPriorityLeads.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.priorityLeads.putAll(r));
          prefs.setSlaOpportunitySync(true);
          prefs.setTotalSync(next);
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
    if (!await prefs.getSlaColorSync()) {
      SyncSlaColor syncSlaColor = SyncSlaColor(dio: dio);
      var data = await syncSlaColor.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.slaColors.putAll(r));
          prefs.setSlaColorSync(true);
          prefs.setTotalSync(next);
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
    if (!await prefs.getHolidaySync()) {
      SyncHoliday syncHoliday = SyncHoliday(dio: dio);
      var data = await syncHoliday.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.holidays.putAll(r));
          prefs.setHolidaySync(true);
          prefs.setTotalSync(next);
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
    if (!await prefs.getTimeSetupSync()) {
      SyncTimeSetup syncTimeSetup = SyncTimeSetup(dio: dio);
      var data = await syncTimeSetup.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.timeSetups.put(r));
          prefs.setTimeSetupSync(true);
          prefs.setTotalSync(next);
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
    if (!await prefs.getStartEndLocationSync()) {
      SyncStartEndLocation startEndLocation = SyncStartEndLocation(dio: dio);
      var data = await startEndLocation.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.parameters.put(r));
          prefs.setStartEndLocationSync(true);
          prefs.setTotalSync(next);
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
    print(next);
    if (!await prefs.getIntervalLocationSync()) {
      SyncIntervalLocation intervalLocation = SyncIntervalLocation(dio: dio);
      var data = await intervalLocation.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.parameters.put(r));
          prefs.setIntervalLocationSync(true);
          prefs.setTotalSync(next);
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
    DateTime now = DateTime.now();
    DateTime dateNext = DateTime(now.year, now.month, now.day, 7, 0, 0, 0, 0);
    dateNext = dateNext.add(const Duration(days: 1));
    print(dateNext.millisecondsSinceEpoch);

    await prefs.setNextSync(dateNext.millisecondsSinceEpoch);

    bool isLogin = await session.getIsLogin();
    emit(SplashState.completedSync(isLogin));
  }
}
