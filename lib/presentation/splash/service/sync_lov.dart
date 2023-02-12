import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/parameter.dart';
import 'package:ufi/presentation/splash/service/synchronize.dart';
import 'package:ufi/services/api_variable.dart';

class SyncLov extends Synchronize {
  SyncLov({required super.dio});

  Future<Either<String, List<Parameter>>> process() async {
    try {
      Response response = await dio.get(SYNC_LOV);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Parameter.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}
