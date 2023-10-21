import 'package:bms/app/data/contacts/contacts.dart';
import 'package:get/get.dart';
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
}
