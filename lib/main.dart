import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufi/presentation/main_widget.dart';

void main() async {
  /*
   *  this code make sure orientation screen in portrait mode
   */
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MainWidget());
}
