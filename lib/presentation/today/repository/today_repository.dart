import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/model/status_leads_open.dart';
import 'package:ufi/presentation/today/model/leads_distribution.dart';
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

  Future<Either<String, List<LeadsDistribution>>> getDistribution(
      String employeeNumber) async {
    try {
      Response response = await _dio.get(
        GET_DISTRIBUTION,
        queryParameters: {'assignTo': employeeNumber},
      );
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => LeadsDistribution.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<bool> pushStatus(StatusLeadsOpen obj) async {
    try {
      Response response = await _dio.put(PUT_STATUS_LEAD,
          data: obj.toJson(),
          options: Options(
            headers: {
              Headers.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return true;
      }
      return false;
    } on DioError catch (e) {
      return true;
    }
  }

  Future<Either<bool, bool>> pushDataLeads(Leads lead) async {
    try {
      Response response = await _dio.post(SUBMIT_FOLLOW_UP,
          data: lead.toJson(),
          options: Options(
            headers: {
              Headers.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      if (response.data != null) {
        ApiResult result = ApiResult.fromJson(response.data);
        if (result.message == 'OK') {
          return right(true);
        }
      }
      return right(false);
    } on DioError catch (e) {
      return left(false);
    }
  }
}
