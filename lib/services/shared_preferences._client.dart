import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPreferencesClient {
  SharedPreferences instance;

  SharedPreferencesClient({required this.instance});

  final _kFirstOpen = "FIRST_OPEN";
  final _kAppVersionSync = "APP_VERSION_SYNC";
  final _kLovSync = "LOV_SYNC";
  final _kOccupationSync = "OCCUPATION_SYNC";
  final _kSubOccupationSync = "SUB_OCCUPATION_SYNC";
  final _kCategorySync = "CATEGORY_SYNC";
  final _kModelSync = "MODEL_SYNC";
  final _kProvinceSync = "PROVINCE_SYNC";
  final _kCitySync = "CITY_SYNC";
  final _kKecamatanSync = "KECAMATAN_SYNC";
  final _kKelurahanSync = "KELURAHAN_SYNC";
  final _kZipCodeSync = "ZIPCODE_SYNC";
  final _kSlaOpportunitySync = "SLA_OPPORTUNITY_SYNC";
  final _kPriorityLeadsSync = "PRIORITY_LEADS_SYNC";
  final _kSlaColorSync = "SLA_COLOR_SYNC";
  final _kHolidaySync = "HOLIDAY_SYNC";
  final _kTimeSetupSync = "TIME_SETUP_SYNC";
  final _kStartEndLocationSync = "START_END_LOCATION_SYNC";
  final _kIntervalLocationSync = "INTERVAL_LOCATION_SYNC";
  final _kNextSync = "NEXT_SYNC";
  final _kTotalSync = "TOTAL_SYNC";

  Future<void> setFirstOpen(bool value) async {
    await instance.setBool(_kFirstOpen, value);
  }

  Future<bool> getFirstOpen() async {
    return instance.getBool(_kFirstOpen) ?? true;
  }

  Future<void> setAppVersionSync(bool value) async {
    await instance.setBool(_kAppVersionSync, value);
  }

  Future<bool> getAppVersionSync() async {
    return instance.getBool(_kAppVersionSync) ?? false;
  }

  Future<void> setLovSync(bool value) async {
    await instance.setBool(_kLovSync, value);
  }

  Future<bool> getLovSync() async {
    return instance.getBool(_kLovSync) ?? false;
  }

  Future<void> setOccupationSync(bool value) async {
    await instance.setBool(_kOccupationSync, value);
  }

  Future<bool> getOccupationSync() async {
    return instance.getBool(_kOccupationSync) ?? false;
  }

  Future<void> setSubOccupationSync(bool value) async {
    await instance.setBool(_kSubOccupationSync, value);
  }

  Future<bool> getSubOccupationSync() async {
    return instance.getBool(_kSubOccupationSync) ?? false;
  }

  Future<void> setCategorySync(bool value) async {
    await instance.setBool(_kCategorySync, value);
  }

  Future<bool> getCategorySync() async {
    return instance.getBool(_kCategorySync) ?? false;
  }

  Future<void> setModelSync(bool value) async {
    await instance.setBool(_kModelSync, value);
  }

  Future<bool> getModelSync() async {
    return instance.getBool(_kModelSync) ?? false;
  }

  Future<void> setProvinceSync(bool value) async {
    await instance.setBool(_kProvinceSync, value);
  }

  Future<bool> getProvinceSync() async {
    return instance.getBool(_kProvinceSync) ?? false;
  }

  Future<void> setCitySync(bool value) async {
    await instance.setBool(_kCitySync, value);
  }

  Future<bool> getCitySync() async {
    return instance.getBool(_kCitySync) ?? false;
  }

  Future<void> setKecamatanSync(bool value) async {
    await instance.setBool(_kKecamatanSync, value);
  }

  Future<bool> getKecamatanSync() async {
    return instance.getBool(_kKecamatanSync) ?? false;
  }

  Future<void> setKelurahanSync(bool value) async {
    await instance.setBool(_kKelurahanSync, value);
  }

  Future<bool> getKelurahanSync() async {
    return instance.getBool(_kKelurahanSync) ?? false;
  }

  Future<void> setZipCodeSync(bool value) async {
    await instance.setBool(_kZipCodeSync, value);
  }

  Future<bool> getZipCodeSync() async {
    return instance.getBool(_kZipCodeSync) ?? false;
  }

  Future<void> setSlaOpportunitySync(bool value) async {
    await instance.setBool(_kSlaOpportunitySync, value);
  }

  Future<bool> getSlaOpportunitySync() async {
    return instance.getBool(_kSlaOpportunitySync) ?? false;
  }

  Future<void> setSlaColorSync(bool value) async {
    await instance.setBool(_kSlaColorSync, value);
  }

  Future<bool> getSlaColorSync() async {
    return instance.getBool(_kSlaColorSync) ?? false;
  }

  Future<void> setPriorityLeadsSync(bool value) async {
    await instance.setBool(_kPriorityLeadsSync, value);
  }

  Future<bool> getPriorityLeadsSync() async {
    return instance.getBool(_kPriorityLeadsSync) ?? false;
  }

  Future<void> setHolidaySync(bool value) async {
    await instance.setBool(_kHolidaySync, value);
  }

  Future<bool> getHolidaySync() async {
    return instance.getBool(_kHolidaySync) ?? false;
  }

  Future<void> setTimeSetupSync(bool value) async {
    await instance.setBool(_kTimeSetupSync, value);
  }

  Future<bool> getTimeSetupSync() async {
    return instance.getBool(_kTimeSetupSync) ?? false;
  }

  Future<void> setStartEndLocationSync(bool value) async {
    await instance.setBool(_kStartEndLocationSync, value);
  }

  Future<bool> getStartEndLocationSync() async {
    return instance.getBool(_kStartEndLocationSync) ?? false;
  }

  Future<void> setIntervalLocationSync(bool value) async {
    await instance.setBool(_kIntervalLocationSync, value);
  }

  Future<bool> getIntervalLocationSync() async {
    return instance.getBool(_kIntervalLocationSync) ?? false;
  }

  Future<void> setNextSync(int value) async {
    await instance.setInt(_kNextSync, value);
  }

  Future<int> getNextSync() async {
    return instance.getInt(_kNextSync) ?? 0;
  }

  Future<void> setTotalSync(int value) async {
    await instance.setInt(_kTotalSync, value);
  }

  Future<int> getTotalSync() async {
    return instance.getInt(_kTotalSync) ?? 0;
  }
}
