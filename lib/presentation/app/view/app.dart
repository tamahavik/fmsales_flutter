import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ufi/components/remove_scroll_glow.dart';
import 'package:ufi/presentation/app/bloc/app_bloc.dart';
import 'package:ufi/presentation/signin/view/login_screen.dart';
import 'package:ufi/presentation/splash/view/splash_screen.dart';
import 'package:ufi/screen/home_navigator_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc()..add(const AppEvent.started()),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return _buildView(state);
        },
      ),
    );
  }

  GetMaterialApp _buildView(AppState state) {
    return GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF10B0E6),
            ),
          ),
        ),
        builder: (context, child) {
          return ScrollConfiguration(
              behavior: RemoveScrollGlow(), child: child!);
        },
        home: state.map(
          initial: (value) => Container(),
          login: (value) => const LoginScreen(),
          home: (value) => const HomeNavigationScreen(),
          splash: (value) => const SplashScreen(),
        ));
  }
}
