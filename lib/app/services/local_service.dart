import 'package:shared_preferences/shared_preferences.dart';

class LocalService {
  setInt(String key, int val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, val);
  }

  setString(String key, String val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, val);
  }

  setBool(String key, bool val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, val);
  }

  getInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  getString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  getBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}
