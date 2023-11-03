import 'package:bms/app/data/companies/companies.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AdminController extends GetxController {
  var isCompanyExpand = false.obs;
  var isUserExpand = false.obs;
  var companyList = <Companies>[].obs;
  final _apiService = Get.find<ApiService>();
  final List<PlutoColumn> companyColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'companyId',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Company Code',
      field: 'uniqueCode',
      hide: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Name',
      field: 'companyName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Display Name',
      field: 'displayName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Phone',
      field: 'phone',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Mobile',
      field: 'mobile',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'E-Mail',
      field: 'email',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Website',
      field: 'website',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Gst',
      field: 'gstNo',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Pan',
      field: 'panNo',
      type: PlutoColumnType.text(),
    ),
  ];

  final companyForm = FormGroup(
    {
      'company': FormControl<String>(),
      'displayName': FormControl<String>(),
      'phone': FormControl<String>(),
      'mobile': FormControl<String>(),
      'email': FormControl<String>(),
      'website': FormControl<String>(),
      'gstTreatment': FormControl<String>(),
      'gstNo': FormControl<String>(),
      'panNo': FormControl<String>(),
      'isActive': FormControl<bool>(value: true),
    },
  );

  @override
  onInit() async {
    super.onInit();
    var company = await _apiService.getCompanies();
    if (company != null) {
      company.forEach((json) {
        companyList.add(Companies.fromJson(json));
      });
      print(companyList);
    }
    update();
  }

  addCompany() async {
    var company = Companies(
        companyList.length + 1,
        companyForm.control("company").value,
        companyForm.control("displayName").value,
        companyForm.control("phone").value,
        companyForm.control("mobile").value,
        companyForm.control("email").value,
        companyForm.control("website").value,
        companyForm.control("gstTreatment").value,
        companyForm.control("gstNo").value,
        companyForm.control("panNo").value,
        null,
        null,
        1,
        null,
        1);
    companyList.add(company);
    dynamic json = companyList.map((element) => element.toJson()).toList();
    String resp = await _apiService.createCompany(json);
    clearForm();
    return resp;
  }

  List<PlutoRow> genCompanyRow(List<Companies> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'companyId': PlutoCell(value: row[index].companyId),
            'uniqueCode': PlutoCell(value: row[index].uniqueCode),
            'companyName': PlutoCell(value: row[index].companyName),
            'displayName': PlutoCell(value: row[index].displayName),
            'phone': PlutoCell(value: row[index].phone),
            'mobile': PlutoCell(value: row[index].mobile),
            'email': PlutoCell(value: row[index].email),
            'website': PlutoCell(value: row[index].website),
            'gstNo': PlutoCell(value: row[index].gstNo),
            'panNo': PlutoCell(value: row[index].panNo),
          }));

  clearForm() {
    companyForm.control("company").value = "";
    companyForm.control("displayName").value = "";
    companyForm.control("phone").value = "";
    companyForm.control("mobile").value = "";
    companyForm.control("email").value = "";
    companyForm.control("website").value = "";
    companyForm.control("gstTreatment").value = "";
    companyForm.control("gstNo").value = "";
    companyForm.control("panNo").value = "";
  }
}
