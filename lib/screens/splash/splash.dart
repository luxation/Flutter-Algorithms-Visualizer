import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_exp1/config/config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer startTimer;

  @override
  void initState() {
    super.initState();
    startTimer = Timer(Duration(seconds: 5),
        () => Navigator.of(context).pushReplacementNamed(Routes.home));
  }

  @override
  void dispose() {
    startTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: Text(Strings.appTitle),
        ),
      ),
    );
  }
}
