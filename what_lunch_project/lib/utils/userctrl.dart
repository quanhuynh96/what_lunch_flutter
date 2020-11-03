import 'package:what_lunch_project/model/user.dart';
import 'package:what_lunch_project/utils/sharepref.dart';

abstract class UserCtrl{
  static final String USER = "USER";

  static void saveUser(UserDTO user){
    SharedPref().setString(USER, user.toString());
  }
}