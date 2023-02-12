import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/presentation/signin/model/signin_request.dart';
import 'package:ufi/presentation/signin/model/signin_response.dart';
import 'package:ufi/services/api_variable.dart';

@injectable
class SigninService {
  final Dio dio;

  SigninService({required this.dio});

  Future<Either<String, SigninResponse>> doLogin(
      {required SigninRequest request}) async {
    try {
      Response response = await dio.post(SIGN_IN,
          data: request.toJson(),
          options: Options(
            headers: {
              Headers.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(
          SigninResponse.fromJson(ApiResult.processJson(result.result)),
        );
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}
