import 'package:flutter/material.dart';

import 'login.dart';

class Tools {
  MaterialApp initMaterialApp(StatefulWidget nameScreen) {
    return MaterialApp(home: nameScreen, debugShowCheckedModeBanner: false,);
  }

  void onOpenLogin(BuildContext context){
    Navigator
        .of(context)
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => initMaterialApp(Login())));
  }
}