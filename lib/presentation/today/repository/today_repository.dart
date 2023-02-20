import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/presentation/today/model/pull_leads.dart';
import 'package:ufi/services/api_variable.dart';

@injectable
class TodayRepository {
  final Dio _dio;

  TodayRepository({required Dio dio}) : _dio = dio;

  Future<Either<String, bool>> checkLogin(
      String employeeNumber, String deviceId) async {
    try {
      Response response = await _dio.get(CHECK_LOGIN, queryParameters: {
        'employeeNumber': employeeNumber,
        'deviceId': deviceId,
      });
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message != 'OK') {
        return right(true);
      }
      return right(false);
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Leads>>> getDistribution(
      String employeeNumber) async {
    try {
      Response response = await _dio.get(
        GET_DISTRIBUTION,
        queryParameters: {'assignTo': employeeNumber},
      );
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Leads.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<bool, List<PullLeads>>> pullLeads(String employeeNumber) async {
    try {
      Response response = await _dio
          .get(PULL_BY_UH.replaceAll('{employeeNumber}', employeeNumber));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => PullLeads.fromJson(e)).toList());
      }
      return left(false);
    } on DioError catch (e) {
      return left(false);
    }
  }

  Future<bool> callbackPullLeads({
    String custName = '',
    String birthDate = '',
    String dataSource = 'C',
    String custMainNo = '',
  }) async {
    try {
      Response response = await _dio.put(CALLBACK_PULL_BY_UH, queryParameters: {
        'custMainNo': custMainNo,
        'dataSource': dataSource,
        'custName': custName,
        'birthDate': birthDate,
      });
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return true;
      }
      return false;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<Either<String, List<Leads>>> syncMultipleDevice(
      String assignTo) async {
    try {
      Response response = await _dio.get(
        SYNC_MULTIPLE_DEVICE,
        queryParameters: {'assignTo': assignTo},
      );
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Leads.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}
