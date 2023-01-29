import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo {
  DeviceInfoPlugin info = DeviceInfoPlugin();

  Future<String> getDeviceId() async {
    AndroidDeviceInfo deviceInfo = await info.androidInfo;
    return deviceInfo.id.toString();
  }
}
