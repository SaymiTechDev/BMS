import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController {
  String company = '';
  String companyName = '';
  String user = '';
  int userId = 0;

  @override
  onInit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company = prefs.getString('company') ?? '';
    companyName = prefs.getString("companyName") ?? '';
    user = prefs.getString("user") ?? '';
    userId = prefs.getInt("userId") ?? 0;
    super.onInit();
  }
}
