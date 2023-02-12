import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufi/inject/injectable.dart';
import 'package:ufi/presentation/app/app.dart';
import 'package:ufi/services/authentication.dart';

Future<void> main() async {
  /*
   *  this code make sure orientation screen in portrait mode
   */
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await configuredDependency();
  Widget mainWidget = await isAuthenticate();
  runApp(App(mainWidget: mainWidget));
}
