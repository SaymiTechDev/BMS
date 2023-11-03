import 'package:bms/app/data/companies/companies.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final _apiService = Get.find<ApiService>();
  var companyList = <Companies>[].obs;
  @override
  onInit() async {
    var company = await _apiService.getCompanies();
    var user = await _apiService.getUsers();
    if (company != null) {
      company.forEach((json) {
        companyList.add(Companies.fromJson(json));
      });
      print(companyList);
    }
    super.onInit();
  }
}
