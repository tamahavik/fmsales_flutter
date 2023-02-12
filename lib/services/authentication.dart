import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ufi/enums/sync_enum.dart';
import 'package:ufi/presentation/signin/view/login_screen.dart';
import 'package:ufi/presentation/splash/view/splash_screen.dart';
import 'package:ufi/screen/home_navigator_screen.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/services/shared_preferences._client.dart';

Future<Widget> isAuthenticate() async {
  SharedPreferencesClient prefs =
      SharedPreferencesClient(instance: await SharedPreferences.getInstance());
  SessionManager session =
      SessionManager(instance: await SharedPreferences.getInstance());

  int now = DateTime.now().millisecondsSinceEpoch;
  int nextSync = await prefs.getNextSync();
  print(nextSync);
  print(now);
  if (now >= nextSync) {
    print('masuk');
    await prefs.setTotalSync(0);
  }

  int totalSync = SyncEnum.values.length;
  int totalSyncPref = await prefs.getTotalSync();
  bool isLogin = await session.getIsLogin();
  if (totalSyncPref >= totalSync && isLogin) {
    return const HomeNavigationScreen();
  } else if (totalSyncPref >= totalSync && !isLogin) {
    return const LoginScreen();
  } else {
    return const SplashScreen();
  }
}
