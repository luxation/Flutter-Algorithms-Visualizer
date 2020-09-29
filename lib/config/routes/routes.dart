import 'package:flutter/material.dart';
import 'package:flutter_web_exp1/screens/screens.dart';

class Routes {
  Routes._();

  static String splash = '/';
  static String home = '/home';

  static final routes = <String, WidgetBuilder> {
    splash: (_) => SplashScreen(),
    home: (_) => HomeScreen(),
  };
}
