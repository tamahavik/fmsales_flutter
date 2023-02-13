import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
import 'package:ufi/presentation/splash/service/api_sync_service.dart';
import 'package:ufi/presentation/splash/service/file_sync_service.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/services/shared_preferences._client.dart';
import 'package:ufi/utils/device_info.dart';
import 'package:ufi/utils/network.dart';
import 'package:ufi/utils/string_text.dart';

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
  final ApiSyncService apiSyncService;
  final FileSyncService fileSyncService;

  SplashBloc({
    required this.info,
    required this.prefs,
    required this.session,
    required this.dio,
    required this.isar,
    required this.apiSyncService,
    required this.fileSyncService,
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
  ) async {
    add(SplashEvent.startSync(event.value));
    emit(const SplashState.initial());
  }

  FutureOr<void> _versionApp(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getAppVersionSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var version = await apiSyncService.versionApiSync();
    String ver = await info.getVersion();
    version.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        //TODO change this hardcode value
        if (r.value == "1.3.0") {
          prefs.setAppVersionSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        } else {
          emit(const SplashState.failedAndCloseSync(
              "Version", "Version Tidak sama"));
        }
      },
    );
  }

  FutureOr<void> _lov(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }

    if (await prefs.getLovSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.lovApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.parameters.putAll(r));
        prefs.setLovSync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _occupation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }

    int next = event.value + 1;
    if (await prefs.getOccupationSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.occupationFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.occupations.putAll(r));
          prefs.setOccupationSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      var data = await apiSyncService.occupationApiSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.occupations.putAll(r));
          prefs.setOccupationSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _subOccupation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getSubOccupationSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.subOccupationFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.subOccupations.putAll(r));
          prefs.setSubOccupationSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      var data = await apiSyncService.subOccupationApiSync();
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.subOccupations.putAll(r));
          prefs.setSubOccupationSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _category(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getCategorySync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.categoryFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.categorys.putAll(r));
          prefs.setCategorySync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      var data = await apiSyncService.categoryApiSync();
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.categorys.putAll(r));
          prefs.setSubOccupationSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _model(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getModelSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.modelFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.models.putAll(r));
          prefs.setModelSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      var data = await apiSyncService.modelApiSync();
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.models.putAll(r));
          prefs.setModelSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _province(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getProvinceSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.provinceFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.provinces.putAll(r));
          prefs.setProvinceSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      Either<String, List<Province>> data;
      String lastLogin = await session.getLastLoginDate();
      if (lastLogin == "") {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        data = await apiSyncService
            .provinceApiSync(formatter.format(DateTime.now()));
      } else {
        data = await apiSyncService.provinceApiSync(lastLogin);
      }
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.provinces.putAll(r));
          prefs.setProvinceSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _city(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getCitySync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.cityFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.citys.putAll(r));
          prefs.setCitySync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      Either<String, List<City>> data;
      String lastLogin = await session.getLastLoginDate();
      if (lastLogin == "") {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        data =
            await apiSyncService.cityApiSync(formatter.format(DateTime.now()));
      } else {
        data = await apiSyncService.cityApiSync(lastLogin);
      }
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.citys.putAll(r));
          prefs.setCitySync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _kecamatan(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getKecamatanSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.kecamatanFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.kecamatans.putAll(r));
          prefs.setKecamatanSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      Either<String, List<Kecamatan>> data;
      String lastLogin = await session.getLastLoginDate();
      if (lastLogin == "") {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        data = await apiSyncService
            .kecamatanApiSync(formatter.format(DateTime.now()));
      } else {
        data = await apiSyncService.kecamatanApiSync(lastLogin);
      }
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.kecamatans.putAll(r));
          prefs.setKecamatanSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _kelurahan(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getKelurahanSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.kelurahanFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.kelurahans.putAll(r));
          prefs.setKelurahanSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      Either<String, List<Kelurahan>> data;
      String lastLogin = await session.getLastLoginDate();
      if (lastLogin == "") {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        data = await apiSyncService
            .kelurahanApiSync(formatter.format(DateTime.now()));
      } else {
        data = await apiSyncService.kelurahanApiSync(lastLogin);
      }
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.kelurahans.putAll(r));
          prefs.setKelurahanSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _zipCode(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getZipCodeSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    if (await prefs.getFirstOpen()) {
      var data = await fileSyncService.zipCodeFileSync();
      data.fold(
        (l) => emit(SplashState.failedAndWarnSync("Error", l)),
        (r) {
          isar.writeTxn(() async => await isar.zipCodes.putAll(r));
          prefs.setZipCodeSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    } else {
      Either<String, List<ZipCode>> data;
      String lastLogin = await session.getLastLoginDate();
      if (lastLogin == "") {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        data = await apiSyncService
            .zipCodeApiSync(formatter.format(DateTime.now()));
      } else {
        data = await apiSyncService.zipCodeApiSync(lastLogin);
      }
      data.fold(
        (l) => SplashState.failedAndWarnSync("Error", l),
        (r) {
          isar.writeTxn(() async => await isar.zipCodes.putAll(r));
          prefs.setZipCodeSync(true);
          prefs.setTotalSync(next);
          emit(SplashState.continueSync(next));
        },
      );
    }
  }

  FutureOr<void> _slaOpportunity(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getSlaOpportunitySync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.slaOpportunityApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.parameters.put(r));
        prefs.setSlaOpportunitySync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _priorityLeads(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getPriorityLeadsSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.priorityLeadsApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.priorityLeads.putAll(r));
        prefs.setSlaOpportunitySync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _slaColor(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getSlaColorSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.slaColorApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.slaColors.putAll(r));
        prefs.setSlaColorSync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _holiday(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getHolidaySync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.holidayApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.holidays.putAll(r));
        prefs.setHolidaySync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _timeSetup(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getTimeSetupSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.timeSetupApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.timeSetups.put(r));
        prefs.setTimeSetupSync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _startEndLocation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getStartEndLocationSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.startEndLocationApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.parameters.put(r));
        prefs.setStartEndLocationSync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  FutureOr<void> _intervalLocation(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await checkConnection()) {
      emit(const SplashState.failedAndWarnSync(
          kNetworkErrorTitle, kNetworkErrorMessage));
      return;
    }
    if (await prefs.getIntervalLocationSync()) {
      emit(SplashState.continueSync(next));
      return;
    }

    var data = await apiSyncService.invervalLocationApiSync();
    data.fold(
      (l) => emit(SplashState.failedAndWarnSync("Error", l)),
      (r) {
        isar.writeTxn(() async => await isar.parameters.put(r));
        prefs.setIntervalLocationSync(true);
        prefs.setTotalSync(next);
        emit(SplashState.continueSync(next));
      },
    );
  }

  _default(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    DateTime now = DateTime.now();
    DateTime dateNext = DateTime(now.year, now.month, now.day, 7, 0, 0, 0, 0);
    dateNext = dateNext.add(const Duration(days: 1));

    await prefs.setNextSync(dateNext.millisecondsSinceEpoch);

    bool isLogin = await session.getIsLogin();
    emit(SplashState.completedSync(isLogin));
  }
}
