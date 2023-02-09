import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ufi/presentation/splash/service/sync_category.dart';
import 'package:ufi/presentation/splash/service/sync_city.dart';
import 'package:ufi/presentation/splash/service/sync_kecamatan.dart';
import 'package:ufi/presentation/splash/service/sync_kelurahan.dart';
import 'package:ufi/presentation/splash/service/sync_lov.dart';
import 'package:ufi/presentation/splash/service/sync_model.dart';
import 'package:ufi/presentation/splash/service/sync_occupation.dart';
import 'package:ufi/presentation/splash/service/sync_province.dart';
import 'package:ufi/presentation/splash/service/sync_sla_opportunity.dart';
import 'package:ufi/presentation/splash/service/sync_sub_occupation.dart';
import 'package:ufi/presentation/splash/service/sync_version_app.dart';
import 'package:ufi/presentation/splash/service/sync_zipcode.dart';
import 'package:ufi/services/shared_preferences._client.dart';
import 'package:ufi/utils/device_info.dart';

part 'splash_bloc.freezed.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final DeviceInfo _info = DeviceInfo();
  final SharedPreferencesClient _prefsClient = SharedPreferencesClient();

  SplashBloc() : super(const _Initial()) {
    on<_StartSync>(_process);
    on<_VersionApp>(_versionApp);
    on<_Lov>(_lov);
    on<_Occupation>(_occupation);
    on<_SubOccupation>(_subOccupation);
    on<_Category>(_category);
    on<_Model>(_model);
    on<_Province>(_province);
    on<_City>(_city);
    on<_Kecamatan>(_kecamatan);
    on<_Kelurahan>(_kelurahan);
    on<_ZipCode>(_zipCode);
    on<_SlaOpportunity>(_slaOpportunity);
    on<_PriorityLeads>(_priorityLeads);
    on<_ParameterPriority>(_parameterPriority);
    on<_SlaColor>(_slaColor);
    on<_Holiday>(_holiday);
    on<_TimeSetup>(_timeSetup);
    on<_StartEndLocation>(_startEndLocation);
    on<_IntervalLocation>(_intervalLocation);
    on<_TryAgain>(_retry);
  }

  Future<void> _process(
    _StartSync event,
    Emitter<SplashState> emit,
  ) async {
    add(_VersionApp(event.value));
  }

  FutureOr<void> _versionApp(
    _VersionApp event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefsClient.getAppVersionSync()) {
      SyncVersionApp appSync = SyncVersionApp();
      var version = await appSync.process();
      String ver = await _info.getVersion();
      version.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          if (r.value == ver) {
            _prefsClient.setAppVersionSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.lov(next));
          } else {
            emit(SplashState.failedSync("Version", "Version Tidak sama"));
          }
        },
      );
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.lov(next));
    }
  }

  FutureOr<void> _lov(
    _Lov event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefsClient.getLovSync()) {
      SyncLov lovSync = SyncLov();
      var data = await lovSync.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefsClient.setLovSync(true);
          emit(SplashState.successSync(next));
          add(SplashEvent.occupation(next));
        },
      );
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.occupation(next));
    }
  }

  FutureOr<void> _occupation(
    _Occupation event,
    Emitter<SplashState> emit,
  ) async {
    SyncOccupation occuSync = SyncOccupation();
    int next = event.value + 1;
    if (!await _prefsClient.getOccupationSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await occuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setOccupationSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.subOccupation(next));
          },
        );
      } else {
        var data = await occuSync.process();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setOccupationSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.subOccupation(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.subOccupation(next));
    }
  }

  FutureOr<void> _subOccupation(
    _SubOccupation event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncSubOccupation subOccuSync = SyncSubOccupation();
    if (!await _prefsClient.getSubOccupationSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await subOccuSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setSubOccupationSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.category(next));
          },
        );
      } else {
        var data = await subOccuSync.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setSubOccupationSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.category(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.category(next));
    }
  }

  FutureOr<void> _category(
    _Category event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncCategory categorySync = SyncCategory();
    if (!await _prefsClient.getCategorySync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await categorySync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setCategorySync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.model(next));
          },
        );
      } else {
        var data = await categorySync.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setSubOccupationSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.model(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.model(next));
    }
  }

  FutureOr<void> _model(
    _Model event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    SyncModel modelSync = SyncModel();
    if (!await _prefsClient.getModelSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await modelSync.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setModelSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.province(next));
          },
        );
      } else {
        var data = await modelSync.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setModelSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.province(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.province(next));
    }
  }

  FutureOr<void> _province(
    _Province event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value;
    SyncProvince syncProvince = SyncProvince();
    if (!await _prefsClient.getProvinceSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await syncProvince.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setProvinceSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.city(next));
          },
        );
      } else {
        var data = await syncProvince.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setProvinceSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.city(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.city(next));
    }
  }

  FutureOr<void> _city(
    _City event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value;
    SyncCity syncCity = SyncCity();
    if (!await _prefsClient.getCitySync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await syncCity.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setCitySync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.kecamatan(next));
          },
        );
      } else {
        var data = await syncCity.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setCitySync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.kecamatan(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.kecamatan(next));
    }
  }

  FutureOr<void> _kecamatan(
    _Kecamatan event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value;
    SyncKecamatan syncKecamatan = SyncKecamatan();
    if (!await _prefsClient.getKecamatanSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await syncKecamatan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setKecamatanSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.kelurahan(next));
          },
        );
      } else {
        var data = await syncKecamatan.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setKecamatanSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.kelurahan(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.kelurahan(next));
    }
  }

  FutureOr<void> _kelurahan(
    _Kelurahan event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value;
    SyncKelurahan syncKelurahan = SyncKelurahan();
    if (!await _prefsClient.getKelurahanSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await syncKelurahan.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setKelurahanSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.zipCode(next));
          },
        );
      } else {
        var data = await syncKelurahan.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setKelurahanSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.zipCode(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.zipCode(next));
    }
  }

  FutureOr<void> _zipCode(
    _ZipCode event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value;
    SyncZipCode syncZipCode = SyncZipCode();
    if (!await _prefsClient.getZipCodeSync()) {
      if (await _prefsClient.getFirstOpen()) {
        var data = await syncZipCode.readJson();
        data.fold(
          (l) => emit(SplashState.failedSync("Error", l)),
          (r) {
            _prefsClient.setZipCodeSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.slaOpportunity(next));
          },
        );
      } else {
        var data = await syncZipCode.process();
        data.fold(
          (l) => SplashState.failedSync("Error", l),
          (r) {
            _prefsClient.setZipCodeSync(true);
            emit(SplashState.successSync(next));
            add(SplashEvent.slaOpportunity(next));
          },
        );
      }
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.slaOpportunity(next));
    }
  }

  FutureOr<void> _slaOpportunity(
    _SlaOpportunity event,
    Emitter<SplashState> emit,
  ) async {
    int next = event.value + 1;
    if (!await _prefsClient.getSlaOpportunitySync()) {
      SyncSlaOpportunity syncSlaOpportunity = SyncSlaOpportunity();
      var data = await syncSlaOpportunity.process();
      data.fold(
        (l) => emit(SplashState.failedSync("Error", l)),
        (r) {
          _prefsClient.setSlaOpportunitySync(true);
          emit(SplashState.successSync(next));
          add(SplashEvent.priorityLeads(next));
        },
      );
    } else {
      emit(SplashState.successSync(next));
      add(SplashEvent.priorityLeads(next));
    }
  }

  FutureOr<void> _priorityLeads(
      _PriorityLeads event, Emitter<SplashState> emit) {}

  FutureOr<void> _parameterPriority(
      _ParameterPriority event, Emitter<SplashState> emit) {}

  FutureOr<void> _slaColor(_SlaColor event, Emitter<SplashState> emit) {}

  FutureOr<void> _holiday(_Holiday event, Emitter<SplashState> emit) {}

  FutureOr<void> _timeSetup(_TimeSetup event, Emitter<SplashState> emit) {}

  FutureOr<void> _startEndLocation(
      _StartEndLocation event, Emitter<SplashState> emit) {}

  FutureOr<void> _intervalLocation(
      _IntervalLocation event, Emitter<SplashState> emit) {}

  Future<void> _retry(
    _TryAgain event,
    Emitter<SplashState> emit,
  ) async {}
}
