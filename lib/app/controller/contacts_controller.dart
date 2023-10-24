import 'package:bms/app/data/contacts/contacts.dart';
import 'package:bms/app/data/values.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ContactsController extends GetxController {
  var vCardData = "".obs;
  var contactType = ContactType.company;
  final vCardForm = FormGroup(
    {
      'type': FormControl<ContactType>(),
      'company': FormControl<String>(),
      'displayName': FormControl<String>(),
      'phone': FormControl<String>(),
      'mobile': FormControl<String>(),
      'email': FormControl<String>(),
      'website': FormControl<String>(),
      'gstTreatment': FormControl<String>(),
      'gstNo': FormControl<String>(),
      'panNo': FormControl<String>(),
      'paymentTerms': FormControl<String>(),
      'discount': FormControl<int>(),
      'relationShipType': FormControl<String>(),
      'bankName': FormControl<String>(),
      'benificiaryName': FormControl<String>(),
      'accountNo': FormControl<String>(),
      'ifscCode': FormControl<String>(),
      'upiId': FormControl<String>(),
      'accountPayable': FormControl<String>(),
      'accountReceivable': FormControl<String>(),
    },
  );

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
  List<PlutoRow> contactRows = [];

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
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Active',
      field: 'isActive',
      enableContextMenu: false,
      width: PlutoGridSettings.columnWidth,
      type: PlutoColumnType.select(['Active', 'InActive']),
    ),
  ];
  List<PlutoRow> addressRows = [];
}
