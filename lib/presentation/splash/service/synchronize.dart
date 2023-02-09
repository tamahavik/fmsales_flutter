import 'package:dio/dio.dart';
import 'package:ufi/services/dio_client.dart';

abstract class Synchronize {
  final Dio dio = DioClient().dio;
}
