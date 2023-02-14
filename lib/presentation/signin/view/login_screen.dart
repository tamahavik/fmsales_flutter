import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/components/background.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart';
import 'package:ufi/presentation/signin/components/login_button.dart';
import 'package:ufi/presentation/signin/components/login_button_loading.dart';
import 'package:ufi/presentation/signin/components/password_field.dart';
import 'package:ufi/presentation/signin/components/username_field.dart';
import 'package:ufi/presentation/home/home_navigator_screen.dart';
import 'package:ufi/utils/string_text.dart' as string;
import 'package:ufi/utils/text_style.dart' as style;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hideText = true;
  String _version = "";
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _stateController(BuildContext context, SigninState state) {
    state.maybeMap(
      orElse: () {},
      success: (value) => Get.off(() => const HomeNavigationScreen()),
      version: (value) => _version = value.version,
      togglePassword: (value) => _hideText = value.visibility,
      error: (value) => {
        Get.defaultDialog(
            title: string.kLoginFailed,
            middleText: value.message ?? string.kLoginFailedMessage,
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                child: const Text("Close"),
              )
            ]),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SigninBloc>()..add(const SigninEvent.started()),
      child: BlocConsumer<SigninBloc, SigninState>(
        listener: _stateController,
        builder: (context, state) {
          return Background(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    string.kSignAsEmployee,
                    style: style.kTittleStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                UsernameField(username: _username),
                const SizedBox(
                  height: 10,
                ),
                PasswordField(
                  password: _password,
                  hideText: _hideText,
                  onPress: () => context
                      .read<SigninBloc>()
                      .add(SigninEvent.handlePassword(_hideText)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: state.maybeMap(
                    orElse: () => LoginButton(
                      onPress: () =>
                          context.read<SigninBloc>().add(SigninEvent.login(
                                username: _username.text,
                                password: _password.text,
                              )),
                    ),
                    loading: (value) => const LoginButtonLoading(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'v $_version',
                    style: style.kVersionStyle,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
