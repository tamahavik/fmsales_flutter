import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class Synchronize {
  Dio dio;
  Synchronize({required this.dio});
}
