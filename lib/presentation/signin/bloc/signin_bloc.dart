import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ufi/presentation/signin/model/signin_request.dart';
import 'package:ufi/presentation/signin/service/signin_service.dart';
import 'package:ufi/utils/device_info.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final SigninService _service = SigninService();
  final DeviceInfo _deviceInfo = DeviceInfo();

  SigninBloc() : super(const _Initial()) {
    on<_Login>(_doLogin);
    on<_HandlePassword>(_togglePassword);
  }

  Future<void> _doLogin(
    _Login event,
    Emitter<SigninState> emit,
  ) async {
    emit(const _Loading());

    String deviceId = await _deviceInfo.getDeviceId();

    print(deviceId);

    SigninRequest request = SigninRequest(
      username: event.username,
      password: event.password,
      deviceId: "",
      tokenId: null,
    );

    print(request.toString());

    final result = await _service.doLogin(request: request);

    //TODO save to shared preference
    emit(result.fold(
      (l) => SigninState.error(l),
      (r) => const SigninState.success(),
    ));
  }

  void _togglePassword(
    _HandlePassword event,
    Emitter<SigninState> emit,
  ) {
    emit(SigninState.togglePassword(!event.visibility));
  }
}
