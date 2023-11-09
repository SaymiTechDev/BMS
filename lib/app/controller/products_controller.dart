import 'package:bms/app/data/products/products.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductsController extends GetxController {
  final _apiService = Get.find<ApiService>();
  String company = '';
  String companyName = '';
  String user = '';
  int userId = 0;

  final List<PlutoColumn> productColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'productId',
      hide: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Product Code',
      field: 'sku',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Product Name',
      field: 'productName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Product Type',
      field: 'productType',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Product Group',
      field: 'productGroup',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Uom',
      field: 'uom',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Sale Pack Unit',
      field: 'spu',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'HsnCode',
      field: 'hsnCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Status',
      field: 'isActive',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Stock',
      field: 'isStock',
      type: PlutoColumnType.text(),
    ),
  ];
  final productList = <Products>[].obs;
  final productForm = FormGroup(
    {
      'productName': FormControl<String>(),
      'sku': FormControl<String>(),
      'productType': FormControl<String>(),
      'productGroup': FormControl<String>(),
      'uom': FormControl<String>(),
      'spu': FormControl<int>(),
      'hsnCode': FormControl<String>(),
      'isActive': FormControl<bool>(value: true),
      'isStock': FormControl<bool>(value: true),
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

    var products = await _apiService.getProducts();
    if (products != null) {
      products.forEach((json) {
        productList.add(Products.fromJson(json));
      });
      if (kDebugMode) {
        print(productList);
      }
    }

    update();
  }

  addProducts() async {
    var products = Products(
      productList.length + 1,
      productForm.control("productName").value,
      productForm.control("sku").value,
      productForm.control("productType").value[0],
      productForm.control("productGroup").value,
      productForm.control("uom").value,
      productForm.control("spu").value,
      productForm.control("hsnCode").value,
      1,
      null,
      productForm.control("isActive").value ? 1 : 0,
      productForm.control("isStock").value ? 1 : 0,
      productForm.control("company").value,
      productForm.control("companyName").value,
    );
    productList.add(products);
    dynamic json = productList.map((element) => element.toJson()).toList();
    print(json);
    String resp = await _apiService.createProducts(json);
    clearForm();
    return resp;
  }

  clearForm() {
    productForm.control("productName").value = "";
    productForm.control("sku").value = "";
    productForm.control("productType").value = "";
    productForm.control("productGroup").value = "";
    productForm.control("uom").value = "";
    productForm.control("spu").value = "";
    productForm.control("hsnCode").value = "";
  }

  List<PlutoRow> genProductRow(List<Products> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'productId': PlutoCell(value: row[index].productId),
            'productName': PlutoCell(value: row[index].productName),
            'sku': PlutoCell(value: row[index].sku),
            'productType': PlutoCell(value: row[index].productType),
            'productGroup': PlutoCell(value: row[index].productGroup),
            'uom': PlutoCell(value: row[index].uom),
            'spu': PlutoCell(value: row[index].spu),
            'hsnCode': PlutoCell(value: row[index].hsnCode),
            'isActive': PlutoCell(
                value: row[index].isActive == 1 ? "Active" : "InActive"),
            'isStock': PlutoCell(value: row[index].isStock == 1 ? "Yes" : "No"),
          }));
}
