import 'package:flutter/material.dart';
import 'package:what_lunch_project/model/baseresponse.dart';
import 'package:what_lunch_project/model/user.dart';
import 'package:what_lunch_project/utils/tools.dart';
import 'package:what_lunch_project/utils/style.dart';
import 'package:what_lunch_project/utils/color.dart';
import 'package:what_lunch_project/usecase/userusecase.dart';
import 'package:what_lunch_project/utils/userctrl.dart';

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
        ButtonLogin(userController.text, passwordController.text)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    userController.dispose();
    passwordController.dispose();
    super.dispose();
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
      TextEditingController controller) {
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
          onPressed: () async {
            // Respond to button press
            print("User: ${this.user} - Password: ${this.password}");
            LoginUser().onLogin(this.user, this.password).then((value) =>
                //UserCtrl.saveUser(value.data.data)
              print(value.toString())
            );
          },
          shape: StadiumBorder(),
          child: Text(
            "Login",
          ),
        ),
      );
}
