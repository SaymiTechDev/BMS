import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class SalesController extends GetxController {
  final List<PlutoColumn> salesColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'contactId',
      hide: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Contact Code',
      field: 'uniqueCode',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Type',
      field: 'contactType',
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
  RxList<PlutoRow> salesRows = <PlutoRow>[].obs;
}
