import 'package:bms/app/controller/main_controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalService {
  setInt(String key, int val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, val);
    Get.find<MainController>().setValue();
  }

  setString(String key, String val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, val);
    Get.find<MainController>().setValue();
  }

  setBool(String key, bool val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, val);
    Get.find<MainController>().setValue();
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
