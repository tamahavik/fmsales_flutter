import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkConnection() async {
  final conn = await Connectivity().checkConnectivity();
  if (conn == ConnectivityResult.mobile) {
    return true;
  } else if (conn == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
