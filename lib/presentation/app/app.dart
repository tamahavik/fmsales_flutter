import 'package:flutter/material.dart';
import 'package:ufi/components/remove_scroll_glow.dart';
import 'package:ufi/utils/color_schemes.dart';

class App extends StatefulWidget {
  final Widget mainWidget;

  const App({super.key, required this.mainWidget});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'roboto',
        colorScheme: lightColorScheme,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: lightColorScheme.onPrimary,
            fontSize: 20,
            fontFamily: 'roboto',
          ),
          backgroundColor: lightColorScheme.primary,
          iconTheme: IconThemeData(
            color: lightColorScheme.onPrimary,
          ),
        ),
        iconTheme: IconThemeData(
          color: lightColorScheme.onPrimary,
        ),
      ),
      builder: (context, child) {
        return ScrollConfiguration(behavior: RemoveScrollGlow(), child: child!);
      },
      home: widget.mainWidget,
    );
  }
}
