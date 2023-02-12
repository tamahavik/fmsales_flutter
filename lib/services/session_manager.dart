import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SessionManager {
  SharedPreferences instance;

  SessionManager({required this.instance});

  final _kIsLogin = "IS_LOGIN";
  final _kLastLoginDate = "LAST_LOGIN_DATE";

  Future<void> setIsLogin(bool value) async {
    instance.setBool(_kIsLogin, value);
  }

  Future<bool> getIsLogin() async {
    return instance.getBool(_kIsLogin) ?? false;
  }

  Future<void> setLastLoginDate(String value) async {
    await instance.setString(_kLastLoginDate, value);
  }

  Future<String> getLastLoginDate() async {
    return instance.getString(_kLastLoginDate) ?? "";
  }
}
