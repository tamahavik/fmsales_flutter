import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class PermissionRequest {
  Future<void> askPermissionCamera() async {
    Permission status = Permission.camera;
    if (await status.isDenied) {
      status.request();
    } else if (await status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  Future<void> askPermissionLocation() async {
    PermissionStatus status = await Permission.locationWhenInUse.request();
    if (status.isDenied) {
      askPermissionLocation();
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  Future<void> askPermissionNotification() async {
    PermissionStatus status = await Permission.notification.request();
    if (status.isDenied) {
      askPermissionLocation();
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }
}
