import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  var company = "".obs;
  var companyName = "".obs;
  var user = "".obs;
  var userId = 0.obs;

  @override
  onInit() async {
    super.onInit();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company(prefs.getString("company"));
    companyName(prefs.getString("companyName"));
    user(prefs.getString("user"));
    userId(prefs.getInt("userId"));
  }

  setValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company(prefs.getString("company"));
    companyName(prefs.getString("companyName"));
    user(prefs.getString("user"));
    userId(prefs.getInt("userId"));
  }
}
