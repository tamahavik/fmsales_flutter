import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/time_setup.dart';
import 'package:ufi/presentation/splash/service/synchronize.dart';
import 'package:ufi/services/api_variable.dart';

class SyncTimeSetup extends Synchronize {
  SyncTimeSetup({required super.dio});

  Future<Either<String, TimeSetup>> process() async {
    try {
      Response response = await dio.get(SYNC_TIME_SETUP);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(TimeSetup.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}
