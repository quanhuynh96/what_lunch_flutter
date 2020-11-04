import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {

  //Boolean
  Future<bool> getBoolean(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(name) ?? false;
  }

  Future<bool> setBoolean(String name, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(name, value);
  }

  //String
  Future<String> getString(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(name) ?? '';
  }

  Future<bool> setString(String name, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString(name, value);
  }

  //Int
  Future<int> getInt(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getInt(name) ?? 0;
  }

  Future<bool> setInt(String name, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setInt(name, value);
  }

  //Double
  Future<double> getDouble(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getDouble(name) ?? 0;
  }

  Future<bool> setDouble(String name, double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setDouble(name, value);
  }

  //String list
  Future<List<String>> getListString(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getStringList(name) ?? 0;
  }

  Future<bool> setListString(String name, List<String> value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setStringList(name, value);
  }
}
