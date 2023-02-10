import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  final _kIsLogin = "IS_LOGIN";
  final _kLastLoginDate = "LAST_LOGIN_DATE";

  Future<void> setIsLogin(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_kIsLogin, value);
  }

  Future<bool> getIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kIsLogin) ?? false;
  }

  Future<void> setLastLoginDate(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kLastLoginDate, value);
  }

  Future<String> getLastLoginDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_kLastLoginDate) ?? "";
  }
}
