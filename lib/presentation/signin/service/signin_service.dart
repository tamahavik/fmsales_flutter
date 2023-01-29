import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/presentation/signin/model/signin_request.dart';
import 'package:ufi/presentation/signin/model/signin_response.dart';
import 'package:ufi/services/api_variable.dart';
import 'package:ufi/services/dio_client.dart';
import 'dart:convert';

class SigninService {
  final Dio _dio = DioClient().dio;

  Future<Either<String, SigninResponse>> doLogin(
      {required SigninRequest request}) async {
    Response response;
    ApiResult result;
    try {
      response = await _dio.post(SIGN_IN,
          data: request.toJson(),
          options: Options(
            headers: {
              Headers.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      result = ApiResult.fromJson(response.data);
      var jsonString = jsonEncode(result.result);
      var jsonResult = jsonDecode(jsonString);
      if (result.message == 'OK') {
        return right(SigninResponse.fromJson(jsonResult));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      print(e.stackTrace);
      print(e.message);
      return left(e.message);
    }
  }
}
