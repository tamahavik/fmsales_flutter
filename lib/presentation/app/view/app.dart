import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ufi/components/remove_scroll_glow.dart';

class App extends StatefulWidget {
  final Widget mainWidget;
  const App({super.key, required this.mainWidget});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
      home: widget.mainWidget,
    );
  }
}
