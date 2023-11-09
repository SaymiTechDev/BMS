import 'package:bms/app/data/trasactions/trans_header/trans_header.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionController extends GetxController {
  final _apiService = Get.find<ApiService>();

  String company = '';
  String companyName = '';
  String user = '';
  int userId = 0;

  final List<PlutoColumn> transactionColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'transEntry',
      hide: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Doc Number',
      field: 'docNo',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Party Name',
      field: 'contactName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Status',
      field: 'status',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'OrderDate',
      field: 'orderDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Amount',
      field: 'total',
      type: PlutoColumnType.text(),
    ),
  ];
  final transactionList = <TransHeader>[].obs;
  final transactionForm = FormGroup(
    {
      'orderName': FormControl<String>(),
      'orderDate': FormControl<DateTime>(),
      'reference': FormControl<String>(),
      'comments': FormControl<String>(),
      'refDate': FormControl<DateTime>(),
      'subTotal': FormControl<double>(),
      'total': FormControl<double>(),
      'adjustValue': FormControl<double>(),
      'discount': FormControl<int>(),
      'contactName': FormControl<String>(),
      'adjustment': FormControl<String>(),
      'shipDate': FormControl<DateTime>(),
    },
  );

  @override
  onInit() async {
    super.onInit();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company = prefs.getString('company') ?? '';
    companyName = prefs.getString("companyName") ?? '';
    user = prefs.getString("user") ?? '';
    userId = prefs.getInt("userId") ?? 0;

    var trans = await _apiService.getTransHeader();
    if (trans != null) {
      trans.forEach((json) {
        transactionList.add(trans.fromJson(json));
      });
      if (kDebugMode) {
        print(transactionList);
      }
    }

    update();
  }

  // addTransaction() async {
  //   var products = TransHeader(
  //     productList.length + 1,
  //     productForm.control("productName").value,
  //     productForm.control("sku").value,
  //     productForm.control("productType").value[0],
  //     productForm.control("productGroup").value,
  //     productForm.control("uom").value,
  //     productForm.control("spu").value,
  //     productForm.control("hsnCode").value,
  //     1,
  //     null,
  //     productForm.control("isActive").value ? 1 : 0,
  //     productForm.control("isStock").value ? 1 : 0,
  //   );
  //   productList.add(products);
  //   dynamic json = productList.map((element) => element.toJson()).toList();
  //   print(json);
  //   String resp = await _apiService.createProducts(json);
  //   clearForm();
  //   return resp;
  // }
  //
  // clearForm() {
  //   productForm.control("productName").value = "";
  //   productForm.control("sku").value = "";
  //   productForm.control("productType").value = "";
  //   productForm.control("productGroup").value = "";
  //   productForm.control("uom").value = "";
  //   productForm.control("spu").value = "";
  //   productForm.control("hsnCode").value = "";
  // }

  List<PlutoRow> genTransRow(List<TransHeader> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'transEntry': PlutoCell(value: row[index].transEntry),
            'contactName': PlutoCell(value: row[index].contactName),
            'status': PlutoCell(value: row[index].status),
            'docNo': PlutoCell(value: row[index].docNo),
            'orderDate': PlutoCell(value: row[index].orderDate),
            'total': PlutoCell(value: row[index].total),
          }));
}
