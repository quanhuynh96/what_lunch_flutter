import 'dart:convert';

import 'package:what_lunch_project/model/user.dart';
import 'package:what_lunch_project/utils/sharepref.dart';

abstract class UserCtrl {
  static final String USER = "USER";

  static void saveUser(UserDTO user) {
    SharedPref().setString(USER, jsonEncode(user));
  }

  static Future<UserDTO> getUser() async{
    return UserDTO.fromJson(jsonDecode(await SharedPref().getString(USER)));
  }
}
