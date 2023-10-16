import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ContactsController extends GetxController {
  var vCardData = "".obs;
  final vCardForm = FormGroup(
    {
      'type': FormControl<bool>(),
      'company': FormControl<String>(),
      'displayName': FormControl<bool>(),
      'phone': FormControl<String>(),
      'mobile': FormControl<String>(),
      'email': FormControl<String>(),
      'email': FormControl<String>(),
      'gstTreatment': FormControl<String>(),
      'gstNo': FormControl<String>(),
      'panNo': FormControl<String>(),
      'district': FormControl<String>(),
      'state': FormControl<String>(),
      'country': FormControl<String>(),
      'pincode': FormControl<String>(),
      'workPhone': FormControl<String>(),
      'tel': FormControl<String>(),
      'url': FormControl<String>(),
      'workUrl': FormControl<String>(),
    },
  );
}
