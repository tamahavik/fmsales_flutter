import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/parameter.dart';
import 'package:ufi/services/api_variable.dart';
import 'package:injectable/injectable.dart';

@injectable
class SyncVersionApp {
  final Dio dio;
  SyncVersionApp({required this.dio});

  Future<Either<String, Parameter>> process() async {
    try {
      Response response = await dio.get(SYNC_APP_VERSION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(Parameter.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}
