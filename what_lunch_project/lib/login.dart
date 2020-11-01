import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Login();
}

class _Login extends State<Login> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(100, 110, 30, 50),body: Center(child: Text('text widget')));
  }
}

class UserField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _UserField extends State<UserField>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Label().initLabel(context, "User Name:"),
        Label().initLabel(context, "Password:"),
      ],
    );
  }
}

class Label{
  StatelessWidget initLabel(BuildContext context, String content){
    return Text(
      content, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
    );
  }
}