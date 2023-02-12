import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@module
abstract class PackageInfoInject {
  @lazySingleton
  @preResolve
  Future<PackageInfo> get instance => PackageInfo.fromPlatform();
}
