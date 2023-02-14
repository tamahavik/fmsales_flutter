import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ufi/model/branch.dart';
import 'package:ufi/model/serv_office.dart';

@injectable
class SessionManager {
  SharedPreferences instance;

  SessionManager({required this.instance});

  final _kIsLogin = "IS_LOGIN";
  final _kFirstLogin = "FIRST_LOGIN";
  final _kLastLoginDate = "LAST_LOGIN_DATE";

  final _kAccessToken = "ACCESS_TOKEN";
  final _kRefreshToken = "REFRESH_TOKEN";
  final _kFullName = "FULL_NAME";
  final _kUserName = "USER_NAME";

  final _kBranchCode = "BRANCH_CODE";
  final _kBranchName = "BRANCH_NAME";
  final _kBranchIsDaf = "BRANCH_IS_DAF";
  final _kEmployeeNumber = "EMPLOYEE_NUMBER";

  final _kOfficeCode = "OFFICE_CODE";
  final _kOfficeName = "OFFICE_NAME";
  final _kServOfficeCode = "SERV_OFFICE_CODE";
  final _kServOfficeName = "SERV_OFFICE_NAME";
  final _kTimeDiff = "TIME_DIFF";

  Future<void> setIsLogin(bool value) async {
    instance.setBool(_kIsLogin, value);
  }

  Future<bool> getIsLogin() async {
    return instance.getBool(_kIsLogin) ?? false;
  }

  Future<void> setFirstLogin(bool value) async {
    instance.setBool(_kFirstLogin, value);
  }

  Future<bool> getFirstLogin() async {
    return instance.getBool(_kFirstLogin) ?? false;
  }

  Future<void> setLastLoginDate(String value) async {
    await instance.setString(_kLastLoginDate, value);
  }

  Future<String> getLastLoginDate() async {
    return instance.getString(_kLastLoginDate) ?? "";
  }

  Future<void> setSession(
      String token, String refreshToken, String name, String username) async {
    await setIsLogin(true);
    await instance.setString(_kAccessToken, token);
    await instance.setString(_kRefreshToken, refreshToken);
    await instance.setString(_kFullName, name);
    await instance.setString(_kUserName, username);
  }

  Future<void> setDataBranch(Branch branch) async {
    await instance.setString(_kBranchCode, branch.code ?? "");
    await instance.setString(_kBranchName, branch.name ?? "");
    await instance.setBool(_kBranchIsDaf, branch.isDaf ?? false);
    await instance.setString(_kEmployeeNumber, branch.employeeNumber ?? "");
  }

  Future<void> setDataServOffice(ServOffice servOffice) async {
    await instance.setString(_kOfficeCode, servOffice.officeCode ?? "");
    await instance.setString(_kOfficeName, servOffice.officeName ?? "");
    await instance.setString(_kServOfficeCode, servOffice.servOfficeCode ?? "");
    await instance.setString(_kServOfficeName, servOffice.servOfficeName ?? "");
    await instance.setInt(_kTimeDiff, servOffice.timeDiff ?? 0);
  }

  Future<String> getFullName() async {
    return instance.getString(_kFullName) ?? '';
  }
}
