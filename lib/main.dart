import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufi/presentation/app/view/app.dart';

void main() async {
  /*
   *  this code make sure orientation screen in portrait mode
   */
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const App());
}
