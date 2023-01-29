import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/components/background.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: BlocConsumer<SigninBloc, SigninState>(
        listener: _stateController,
        builder: (context, state) {
          return _buildSigninScreen(context, state);
        },
      ),
    );
  }

  Background _buildSigninScreen(BuildContext context, SigninState state) {
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
            style: style.kFormFieldWhiteFontStyle,
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
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
            style: const TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
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
          const Center(
            child: Text(
              'v 3.0.0',
              style: style.kVersionStyle,
            ),
          ),
        ],
      ),
    );
  }

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
        ),
      },
      togglePassword: (value) => _hideText = value.visibility,
    );
  }

  ElevatedButton _loginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<SigninBloc>().add(SigninEvent.login(
              username: "O129925",
              password: "123456Aa",
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
