import 'package:bms/app/data/coa/coa.dart';
import 'package:bms/app/data/fYears/fYear.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FinanceController extends GetxController {
  var isFinYearExpand = false.obs;
  var isCoaExpand = false.obs;
  var finYearList = <FYear>[].obs;
  var coaList = <Coa>[].obs;
  final _apiService = Get.find<ApiService>();
  final List<PlutoColumn> coaColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'coaId',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Account Code',
      field: 'accountCode',
      hide: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Account',
      field: 'accountName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Account Type',
      field: 'accountType',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Parent Account',
      field: 'parentAccount',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Balance',
      field: 'balance',
      type: PlutoColumnType.text(),
    ),
  ];

  final coaForm = FormGroup(
    {
      'accountCode': FormControl<String>(),
      'accountName': FormControl<String>(),
      'accountType': FormControl<String>(),
      'parentAccount': FormControl<String>(),
      'isActive': FormControl<bool>(value: true),
    },
  );

  @override
  onInit() async {
    super.onInit();
    var coa = await _apiService.getCoa();
    if (coa != null) {
      coa.forEach((json) {
        coaList.add(Coa.fromJson(json));
      });
      print(coaList);
    }
    update();
  }

  addCoa() async {
    var coa = Coa(
        coaList.length + 1,
        coaForm.control("accountName").value,
        coaForm.control("accountCode").value,
        coaForm.control("accountType").value,
        coaForm.control("parentAccount").value,
        "0",
        1,
        null,
        1);
    coaList.add(coa);
    dynamic json = coaList.map((element) => element.toJson()).toList();
    String resp = await _apiService.createCoa(json);
    clearForm();
    return resp;
  }

  List<PlutoRow> genCoaRow(List<Coa> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'coaId': PlutoCell(value: row[index].coaId),
            'accountCode': PlutoCell(value: row[index].accountCode),
            'accountName': PlutoCell(value: row[index].accountName),
            'accountType': PlutoCell(value: row[index].accountType),
            'parentAccount': PlutoCell(value: row[index].parentAccount),
            'balance': PlutoCell(value: row[index].balance),
          }));

  clearForm() {
    coaForm.control("accountCode").value = "";
    coaForm.control("accountName").value = "";
    coaForm.control("accountType").value = "";
    coaForm.control("parentAccount").value = "";
  }
}
