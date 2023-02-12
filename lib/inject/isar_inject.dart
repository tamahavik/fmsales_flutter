import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:ufi/database/database.dart';

@module
abstract class IsarInject {
  @preResolve
  @singleton
  Future<Isar> get isar => Database.init();
}
