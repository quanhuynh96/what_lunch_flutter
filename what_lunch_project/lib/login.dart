import 'package:flutter/material.dart';
import 'package:what_lunch_project/utils/tools.dart';
import 'utils/style.dart';
import 'utils/color.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUtils.mainBackground,
        body: Center(child: UserField()));
  }
}

class UserField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserField();
}

class _UserField extends State<UserField> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Label().initLabel(context, "User Name:"),
        InputField("Enter user name", false, userController),
        Label().initLabel(context, "Password:"),
        InputField("Enter password", true, passwordController),
        ButtonLogin(userController.value.toString(), passwordController.value.toString())
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

class Label {
  Widget initLabel(BuildContext context, String content) {
    return Container(
        margin: const EdgeInsets.fromLTRB(40, 0, 40, 5),
        child: Text(
          content,
          style: StyleUtils.textLabelStyle,
        ));
  }
}

class _InputField extends State<InputField> {
  String content;
  bool isPassword;
  TextEditingController controller;

  _InputField(
      String content,
      bool isPassword,
      TextEditingController userController) {
    this.content = content;
    this.isPassword = isPassword;
    this.controller = controller;
  }

  @override
  Widget build(BuildContext context) => Container(
      margin: ToolsUtils.space(40, 0, 40, 10),
      padding: ToolsUtils.space(10, 0, 10, 0),
      child: TextField(
        controller: this.controller,
        obscureText: this.isPassword,
        decoration: StyleUtils.bgInputText(this.content),
      ),
      decoration: StyleUtils.bgInputField);
}

class InputField extends StatefulWidget {
  String content;
  bool isPassword;
  TextEditingController controller;

  InputField(
      String content,
      bool isPassword,
      TextEditingController controller) {
    this.content = content;
    this.isPassword = isPassword;
    this.controller = controller;
  }

  @override
  State<StatefulWidget> createState() => _InputField(content, isPassword, controller);
}

class ButtonLogin extends StatelessWidget {
  String user;
  String password;
  ButtonLogin(String user, String password){
    this.user = user;
    this.password = password;
  }
  @override
  Widget build(BuildContext context) => Container(
        margin: ToolsUtils.spaceTop(20),
        alignment: Alignment.center,
        child: FlatButton(
          color: ColorUtils.buttonBackground,
          textColor: ColorUtils.buttonTextColor,
          onPressed: () {
            // Respond to button press
            print("User: ${this.user} - Password: ${this.password}");
          },
          shape: StadiumBorder(),
          child: Text(
            "Login",
          ),
        ),
      );
}
