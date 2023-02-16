import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/enums/logout_enum.dart';
import 'package:ufi/model/sign_out.dart';
import 'package:ufi/services/api_variable.dart';
import 'package:ufi/services/session_manager.dart';

@injectable
class LogoutRepository {
  final Dio _dio;
  final SessionManager _session;

  LogoutRepository({
    required Dio dio,
    required SessionManager session,
  })  : _dio = dio,
        _session = session;

  Future<Either<bool, bool>> doLogout(LogoutEnum source) async {
    String refreshToken = _session.getRefreshToken();
    String username = _session.getEmployeeNumber();
    SignOut signOut = SignOut(refreshToken, username, source);
    print(signOut.toJson());
    try {
      print(1);
      Response response = await _dio.post(SIGN_OUT,
          data: signOut.toJson(),
          options: Options(
            headers: {
              Headers.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      print(2);
      var clean = await _session.clearSharedPreference();
      if (response.data != null) {
        return right(clean);
      }
      return right(false);
    } on DioError catch (e) {
      print(e.message);
      print(e.stackTrace);
      return left(false);
    }
  }
}
