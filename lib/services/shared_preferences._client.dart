import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClient {
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
  final _kParameterPrioritySync = "PARAMETER_PRIORITY_SYNC";

  Future<void> setFirstOpen(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kFirstOpen, value);
  }

  Future<bool> getFirstOpen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kFirstOpen) ?? false;
  }

  Future<void> setAppVersionSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kAppVersionSync, value);
  }

  Future<bool> getAppVersionSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kAppVersionSync) ?? false;
  }

  Future<void> setLovSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kLovSync, value);
  }

  Future<bool> getLovSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kLovSync) ?? false;
  }

  Future<void> setOccupationSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kOccupationSync, value);
  }

  Future<bool> getOccupationSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kOccupationSync) ?? false;
  }

  Future<void> setSubOccupationSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kSubOccupationSync, value);
  }

  Future<bool> getSubOccupationSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kSubOccupationSync) ?? false;
  }

  Future<void> setCategorySync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kCategorySync, value);
  }

  Future<bool> getCategorySync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kCategorySync) ?? false;
  }

  Future<void> setModelSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kModelSync, value);
  }

  Future<bool> getModelSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kModelSync) ?? false;
  }

  Future<void> setProvinceSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kProvinceSync, value);
  }

  Future<bool> getProvinceSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kProvinceSync) ?? false;
  }

  Future<void> setCitySync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kCitySync, value);
  }

  Future<bool> getCitySync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kCitySync) ?? false;
  }

  Future<void> setKecamatanSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kKecamatanSync, value);
  }

  Future<bool> getKecamatanSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kKecamatanSync) ?? false;
  }

  Future<void> setKelurahanSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kKelurahanSync, value);
  }

  Future<bool> getKelurahanSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kKelurahanSync) ?? false;
  }

  Future<void> setZipCodeSync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kZipCodeSync, value);
  }

  Future<bool> getZipCodeSync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kZipCodeSync) ?? false;
  }

  Future<void> setSlaOpportunitySync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kSlaOpportunitySync, value);
  }

  Future<bool> getSlaOpportunitySync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kSlaOpportunitySync) ?? false;
  }

  Future<void> setParameterPrioritySync(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kParameterPrioritySync, value);
  }

  Future<bool> getParameterPrioritySync() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kParameterPrioritySync) ?? false;
  }
}
