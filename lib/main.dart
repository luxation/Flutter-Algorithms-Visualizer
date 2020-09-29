import 'package:flutter/material.dart';
import 'config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      initialRoute: Routes.splash,
      theme: AppTheme.getTheme(),
      darkTheme: AppTheme.getDarkTheme(),
    );
  }
}
