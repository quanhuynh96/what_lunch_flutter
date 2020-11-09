import 'package:flutter/material.dart';
import 'package:what_lunch_project/utils/tools.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  Timer _timer;

  _SplashState() {
    _timer = new Timer(const Duration(milliseconds: 5000), () {
      setState(() {
        Tools.onOpenLogin(context);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_background.gif'),
              fit: BoxFit.fill)),
    );
  }
}
