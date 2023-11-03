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
  final List<PlutoColumn> fYearColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'fYearId',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Fin Year',
      field: 'fYear',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Start Date',
      field: 'startDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'End Date',
      field: 'endDate',
      type: PlutoColumnType.date(),
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

  final fYearForm = FormGroup(
    {
      'fYear': FormControl<String>(),
      'startDate': FormControl<DateTime>(),
      'endDate': FormControl<DateTime>(),
      'isActive': FormControl<bool>(value: true),
    },
  );

  @override
  onInit() async {
    super.onInit();
    var coa = await _apiService.getCoa();
    var fyr = await _apiService.getFYear();
    if (coa != null) {
      coa.forEach((json) {
        coaList.add(Coa.fromJson(json));
      });
      print(coaList);
    }
    if (fyr != null) {
      fyr.forEach((json) {
        finYearList.add(FYear.fromJson(json));
      });
      print(finYearList);
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
      1,
      coaForm.control("company").value,
      coaForm.control("companyName").value,
    );
    coaList.add(coa);
    dynamic json = coaList.map((element) => element.toJson()).toList();
    String resp = await _apiService.createCoa(json);
    clearForm();
    return resp;
  }

  addFYear() async {
    var fyr = FYear(
        finYearList.length + 1,
        fYearForm.control("fYear").value,
        fYearForm.control("startDate").value,
        fYearForm.control("endDate").value,
        1,
        null,
        1);
    finYearList.add(fyr);
    dynamic json = finYearList.map((element) => element.toJson()).toList();
    String resp = await _apiService.createFYear(json);
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

  List<PlutoRow> genFYearRow(List<FYear> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'fYearId': PlutoCell(value: row[index].fYearId),
            'fYear': PlutoCell(value: row[index].fYear),
            'startDate': PlutoCell(value: row[index].startDate),
            'endDate': PlutoCell(value: row[index].endDate),
          }));

  clearForm() {
    coaForm.control("accountCode").value = "";
    coaForm.control("accountName").value = "";
    coaForm.control("accountType").value = "";
    coaForm.control("parentAccount").value = "";

    fYearForm.control("fYear").value = "";
    fYearForm.control("startDate").value = "";
    fYearForm.control("endDate").value = "";
  }
}
