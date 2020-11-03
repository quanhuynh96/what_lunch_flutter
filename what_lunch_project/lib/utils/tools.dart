import 'package:flutter/material.dart';
import 'package:what_lunch_project/ui/login.dart';

class Tools {
  MaterialApp initMaterialApp(StatefulWidget nameScreen) {
    return MaterialApp(
      home: nameScreen,
      debugShowCheckedModeBanner: false,
    );
  }

  void onOpenLogin(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => initMaterialApp(Login())));
  }
}

abstract class ToolsUtils {
  static EdgeInsetsGeometry spaceStart(double start) =>
      EdgeInsets.fromLTRB(start, 0, 0, 0);

  static EdgeInsetsGeometry spaceBottom(double bottom) =>
      EdgeInsets.fromLTRB(0, 0, 0, bottom);

  static EdgeInsetsGeometry spaceTop(double top) =>
      EdgeInsets.fromLTRB(0, top, 0, 0);

  static EdgeInsetsGeometry spaceEnd(double end) =>
      EdgeInsets.fromLTRB(0, 0, end, 0);

  static EdgeInsetsGeometry space(
          double start, double top, double end, double bottom) =>
      EdgeInsets.fromLTRB(start, top, end, bottom);
}
