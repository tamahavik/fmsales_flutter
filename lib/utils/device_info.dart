import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@injectable
class DeviceInfo {
  DeviceInfoPlugin deviceInfo;
  PackageInfo packageInfo;

  DeviceInfo({required this.deviceInfo, required this.packageInfo});

  Future<String> getDeviceId() async {
    AndroidDeviceInfo info = await deviceInfo.androidInfo;
    return info.id.toString();
  }

  Future<String> getVersion() async {
    return packageInfo.version;
  }
}
