import 'package:bms/app/data/values.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class ProductsController extends GetxController {
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
      type: PlutoColumnType.select(DataList.productType),
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
      type: PlutoColumnType.number(defaultValue: 1),
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
  ];
  final List<PlutoRow> productRows = [];
}
