import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:ufi/presentation/signin/model/signin_request.dart';
import 'package:ufi/presentation/signin/service/signin_service.dart';
import 'package:ufi/services/session_manager.dart';
import 'package:ufi/utils/device_info.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

@injectable
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final SigninService service;
  final DeviceInfo deviceInfo;
  final SessionManager session;

  SigninBloc({
    required this.service,
    required this.deviceInfo,
    required this.session,
  }) : super(const _Initial()) {
    on<_Login>(_doLogin);
    on<_HandlePassword>(_togglePassword);
  }

  Future<void> _doLogin(
    _Login event,
    Emitter<SigninState> emit,
  ) async {
    emit(const _Loading());

    String deviceId = await deviceInfo.getDeviceId();

    SigninRequest request = SigninRequest(
      username: event.username,
      password: event.password,
      deviceId: deviceId,
      tokenId: null,
    );

    final result = await service.doLogin(request: request);

    //TODO save to shared preference
    result.fold(
      (l) => emit(SigninState.error(l)),
      (r) {
        DateFormat formatter = DateFormat("dd-MMM-yyyy");
        session.setIsLogin(true);
        session.setLastLoginDate(formatter.format(DateTime.now()));
        emit(const SigninState.success());
      },
    );
  }

  void _togglePassword(
    _HandlePassword event,
    Emitter<SigninState> emit,
  ) {
    emit(SigninState.togglePassword(!event.visibility));
  }
}
