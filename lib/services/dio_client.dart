import 'package:dio/dio.dart';
import 'package:ufi/services/api_variable.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: TIME_OUT,
      receiveTimeout: TIME_OUT,
    ),
  );
  static final DioClient _instance = DioClient._internal();
  factory DioClient() {
    return _instance;
  }
  DioClient._internal();
}
