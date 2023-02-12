import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesInject {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get instance => SharedPreferences.getInstance();
}
