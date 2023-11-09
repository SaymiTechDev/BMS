import 'package:bms/app/data/companies/companies.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  var company = "".obs;
  var companyName = "".obs;
  var user = "".obs;
  var userId = 0.obs;
  var companyList = <Companies>[].obs;
  final _apiService = Get.find<ApiService>();

  List<ListTile> menus = [
    ListTile(
      onTap: () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove("userName");
        prefs.remove("userId");
        Get.offAllNamed(Routes.login);
      },
      leading: const Icon(Icons.logout),
      title: const Text("LogOff"),
    )
  ];

  @override
  onInit() async {
    super.onInit();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company(prefs.getString("company"));
    companyName(prefs.getString("companyName"));
    user(prefs.getString("userName"));
    userId(prefs.getInt("userId"));

    var companyJson = await _apiService.getCompanies();
    if (companyJson != null) {
      companyJson.forEach((json) {
        companyList.add(Companies.fromJson(json));
      });
      print(companyList);
    }
  }

  setValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company(prefs.getString("company"));
    companyName(prefs.getString("companyName"));
    user(prefs.getString("userName"));
    userId(prefs.getInt("userId"));
  }
}
