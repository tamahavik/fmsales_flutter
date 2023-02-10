import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ufi/components/background.dart';
import 'package:ufi/enums/sync_enum.dart';
import 'package:ufi/presentation/signin/view/login_screen.dart';
import 'package:ufi/presentation/splash/bloc/splash_bloc.dart';
import 'package:ufi/screen/home_navigator_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _value = 0;
  final int _max = SyncEnum.values.length;

  void _stateController(BuildContext context, SplashState state) {
    state.maybeMap(
      orElse: () {},
      failedSync: (value) => {
        Get.defaultDialog(
            title: value.title,
            middleText: value.message,
            actions: [
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text("Close"),
              )
            ]),
      },
      continueSync: (value) {
        _value = value.value;
        context.read<SplashBloc>().add(SplashEvent.startSync(_value));
      },
      completedSync: (value) {
        if (value.isLogin) {
          Get.off(() => const HomeNavigationScreen());
        } else {
          Get.off(() => const LoginScreen());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(SplashEvent.startSync(_value)),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: _stateController,
        builder: (context, state) {
          return _buildView();
        },
      ),
    );
  }

  Scaffold _buildView() {
    return Scaffold(
      body: Center(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Image.asset(
                  'assets/images/mobile-sales.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${((_value / _max) * 100).floor()}%',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: LinearProgressIndicator(
                      value: _value / _max,
                      backgroundColor: const Color(0xB3FFFFFF),
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
