import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DeviceInfoPluginInject {
  @singleton
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();
}
