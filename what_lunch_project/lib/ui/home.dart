import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_lunch_project/utils/color.dart';
import 'package:what_lunch_project/utils/style.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Welcome to Flutter',
    debugShowCheckedModeBanner: false,
    home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_home.jpg"), fit: BoxFit.cover)),
      child: Container(
        alignment: Alignment.centerRight,
        child: MenuHome(),
      ),
    ),
  );
}

class MenuHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuHome();
}

class _MenuHome extends State<MenuHome> {
  @override
  Widget build(BuildContext context) => Column(
        children: [TextMenu("Restaurant"), TextMenu("Food"), TextMenu("Menu")],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
      );
}

class TextMenu extends StatelessWidget {
  String label;

  TextMenu(String label) {
    this.label = label;
  }

  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 40, 20),
      child: GestureDetector(
        onTap: (){
          print("Tapped");
        },
        child: Text(this.label,
          style: StyleUtils.textMenuStyle,),
      ));
}
