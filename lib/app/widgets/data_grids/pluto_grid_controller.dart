import 'package:bms/app/data/values.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridController extends GetxController {
  final List<PlutoColumn> contactColumns = <PlutoColumn>[
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
  List<PlutoRow> contactRows = <PlutoRow>[];

  final List<PlutoColumn> addressColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'addressId',
      hide: true,
      enableContextMenu: false,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Address Type',
      field: 'addressType',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.select(DataList.addressType),
    ),
    PlutoColumn(
      title: 'Name',
      field: 'addressName',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Door',
      field: 'doorNo',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Building',
      field: 'building',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Street',
      field: 'street',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'City',
      field: 'city',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'State',
      field: 'state',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Pincode',
      field: 'pinCode',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Active',
      field: 'isActive',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.select(['Active', 'InActive']),
    ),
  ];
  List<PlutoRow> addressRows = <PlutoRow>[];
  List<PlutoRow> rowData = <PlutoRow>[];
  void genRow(List<dynamic> rows) {}

  void genColumn(List<String> column) {}
}
