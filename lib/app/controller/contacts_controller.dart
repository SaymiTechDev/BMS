import 'package:bms/app/data/contacts/contacts.dart';
import 'package:bms/app/data/values.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactsController extends GetxController {
  var contactType = ContactType.C;
  String company = '';
  String companyName = '';
  String user = '';
  int userId = 0;
  final _apiService = Get.find<ApiService>();
  final vCardForm = FormGroup(
    {
      'type': FormControl<ContactType>(value: ContactType.C),
      'company': FormControl<String>(),
      'name': FormControl<String>(),
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
      'isActive': FormControl<bool>(value: true),
    },
  );

  var contactList = <Contacts>[].obs;

  final List<PlutoColumn> contactColumns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'contactId',
      enableRowChecked: true,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Contact Code',
      field: 'uniqueCode',
      hide: true,
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
  RxList<PlutoRow> addressRows = <PlutoRow>[].obs;

  @override
  onInit() async {
    super.onInit();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    company = prefs.getString('company') ?? '';
    companyName = prefs.getString("companyName") ?? '';
    user = prefs.getString("user") ?? '';
    userId = prefs.getInt("userId") ?? 0;
    var contactsJson = await _apiService.getContacts();
    if (contactsJson != null) {
      contactsJson.forEach((json) {
        contactList.add(Contacts.fromJson(json));
      });
      print(contactList);
    }
    update();
  }

  addContacts() async {
    contactType = vCardForm.control("type").value;
    var contact = Contacts(
      contactList.length + 1,
      contactType,
      vCardForm.control("name").value,
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
      1,
      vCardForm.control("company").value,
      vCardForm.control("companyName").value,
    );
    contactList.add(contact);
    dynamic json = contactList.map((element) => element.toJson()).toList();
    String resp = await _apiService.createContacts(json);
    vCardForm.reset();
    return resp;
  }

  List<PlutoRow> genContactRow(List<Contacts> row) => List.generate(
      row.length,
      (index) => PlutoRow(cells: {
            'contactId': PlutoCell(value: row[index].contactId),
            'uniqueCode': PlutoCell(value: row[index].uniqueCode),
            'companyName': PlutoCell(value: row[index].companyName),
            'contactType': PlutoCell(
                value: row[index].contactType == ContactType.I
                    ? 'Individual'
                    : 'Company'),
            'displayName': PlutoCell(value: row[index].displayName),
            'phone': PlutoCell(value: row[index].phone),
            'mobile': PlutoCell(value: row[index].mobile),
            'email': PlutoCell(value: row[index].email),
            'website': PlutoCell(value: row[index].website),
            'gstNo': PlutoCell(value: row[index].gstNo),
            'panNo': PlutoCell(value: row[index].panNo),
          }));

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
