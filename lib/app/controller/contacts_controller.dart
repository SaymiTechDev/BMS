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

  var contactList = <Contacts>[].obs;

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
  List<PlutoRow> addressRows = [];

  @override
  onInit() {
    super.onInit();
  }

  addContacts() {
    contactType = vCardForm.control("type").value;
    var contact = Contacts(
        null,
        contactType,
        vCardForm.control("company").value,
        vCardForm.control("displayName").value,
        vCardForm.control("phone").value,
        vCardForm.control("mobile").value,
        vCardForm.control("email").value,
        vCardForm.control("website").value,
        vCardForm.control("gstTreatment").value,
        vCardForm.control("gstNo").value,
        vCardForm.control("panNo").value,
        vCardForm.control("paymentTerms").value,
        vCardForm.control("discount").value,
        vCardForm.control("relationShipType").value,
        vCardForm.control("bankName").value,
        vCardForm.control("benificiaryName").value,
        vCardForm.control("accountNo").value,
        vCardForm.control("ifscCode").value,
        vCardForm.control("upiId").value,
        vCardForm.control("accountPayable").value,
        vCardForm.control("accountReceivable").value,
        null,
        1,
        null,
        true);
    contactList.add(contact);

    contactRows = contactList
        .map((row) => PlutoRow(
              cells: {
                'contactId': PlutoCell(value: row.contactId),
                'companyName': PlutoCell(value: row.companyName),
                'contactType': PlutoCell(value: row.contactType),
                'displayName': PlutoCell(value: row.displayName),
                'phone': PlutoCell(value: row.phone),
                'mobile': PlutoCell(value: row.mobile),
                'email': PlutoCell(value: row.email),
                'website': PlutoCell(value: row.website),
                'gstNo': PlutoCell(value: row.gstNo),
                'panNo': PlutoCell(value: row.panNo),
              },
            ))
        .toList();
    // handleAddRowsContacts(contactRows);
    clearForm();
  }

  clearForm() {
    vCardForm.control("company").value = "";
    vCardForm.control("displayName").value = "";
    vCardForm.control("phone").value = "";
    vCardForm.control("mobile").value = "";
    vCardForm.control("email").value = "";
    vCardForm.control("website").value = "";
    vCardForm.control("gstTreatment").value = "";
    vCardForm.control("gstNo").value = "";
    vCardForm.control("panNo").value = "";
    vCardForm.control("paymentTerms").value = "";
    vCardForm.control("discount").value = 0;
    vCardForm.control("relationShipType").value = "";
    vCardForm.control("bankName").value = "";
    vCardForm.control("benificiaryName").value = "";
    vCardForm.control("accountNo").value = "";
    vCardForm.control("ifscCode").value = "";
    vCardForm.control("upiId").value = "";
    vCardForm.control("accountPayable").value = "";
    vCardForm.control("accountReceivable").value = "";
  }
}
