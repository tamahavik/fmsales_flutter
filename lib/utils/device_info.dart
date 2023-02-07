import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfo {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<String> getDeviceId() async {
    AndroidDeviceInfo deviceInfo = await _deviceInfo.androidInfo;
    return deviceInfo.id.toString();
  }

  Future<String> getVersion() async {
    final PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.version;
  }
}
