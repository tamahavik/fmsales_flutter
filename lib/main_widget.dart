import 'package:flutter/material.dart';
import 'package:ufi/components/remove_scroll_glow.dart';
import 'package:ufi/screen/form1_screen.dart';
import 'package:ufi/screen/form2_screen.dart';
import 'package:ufi/screen/form3_screen.dart';
import 'package:ufi/screen/form4_screen.dart';
import 'package:ufi/screen/form5_screen.dart';
import 'package:ufi/screen/form6_screen.dart';
import 'package:ufi/screen/form7_screen.dart';
import 'package:ufi/screen/home_screen.dart';
import 'package:ufi/screen/search_screen.dart';

import 'screen/home_navigator_screen.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'roboto',
      ),
      builder: (context, child) {
        return ScrollConfiguration(behavior: RemoveScrollGlow(), child: child!);
      },
      home: HomeNavigationScreen(),
    );
  }
}
