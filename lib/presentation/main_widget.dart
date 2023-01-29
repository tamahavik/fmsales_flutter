import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ufi/components/remove_scroll_glow.dart';
import 'package:ufi/presentation/signin/view/login_screen.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
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
        return ScrollConfiguration(behavior: RemoveScrollGlow(), child: child!);
      },
      home: LoginScreen(),
    );
  }
}
