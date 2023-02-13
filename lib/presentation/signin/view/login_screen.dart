import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/components/background.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/signin/bloc/signin_bloc.dart';
import 'package:ufi/screen/home_navigator_screen.dart';
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
      success: (value) => {
        Get.off(() => const HomeNavigationScreen()),
      },
      error: (value) => {
        Get.defaultDialog(
            title: string.kLoginFailed,
            middleText: value.message ?? string.kLoginFailedMessage,
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Close"),
              )
            ]),
      },
      version: (value) {
        _version = value.version;
      },
      togglePassword: (value) => _hideText = value.visibility,
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
          return _buildView(context, state);
        },
      ),
    );
  }

  Background _buildView(BuildContext context, SigninState state) {
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
          TextFormField(
            controller: _username,
            style: style.kFormFieldWhiteFontStyle,
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: string.kNpkNpo,
              hintStyle: style.kHintTextStyle,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _password,
            style: const TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            obscureText: _hideText,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(_hideText
                    ? Icons.visibility_rounded
                    : Icons.visibility_off),
                color: Colors.black45,
                onPressed: () {
                  context
                      .read<SigninBloc>()
                      .add(SigninEvent.handlePassword(_hideText));
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: string.kPassword,
              hintStyle: style.kHintTextStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: state.maybeMap(
              orElse: () => _loginButton(context),
              loading: (value) => _loginButtonLoading(),
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
  }

  ElevatedButton _loginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<SigninBloc>().add(SigninEvent.login(
              username: _username.text,
              password: _password.text,
            ));
      },
      child: const Text(string.kSignInCapital),
    );
  }

  ElevatedButton _loginButtonLoading() {
    return const ElevatedButton(
      onPressed: null,
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
