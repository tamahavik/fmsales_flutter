import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/services/api_variable.dart';

@module
abstract class DioInject {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: BASE_URL,
          connectTimeout: TIME_OUT,
          receiveTimeout: TIME_OUT,
        ),
      );
}
