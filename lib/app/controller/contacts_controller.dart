import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ContactsController extends GetxController {
  var vCardData = "".obs;
  final vCardForm = FormGroup(
    {
      'firstName': FormControl<String>(),
      'isGst': FormControl<bool>(),
      'middleName': FormControl<String>(),
      'lastName': FormControl<String>(),
      'organization': FormControl<String>(),
      'email': FormControl<String>(),
      'cellPhone': FormControl<String>(),
      'street': FormControl<String>(),
      'city': FormControl<String>(),
      'district': FormControl<String>(),
      'state': FormControl<String>(),
      'country': FormControl<String>(),
      'pincode': FormControl<String>(),
      'workPhone': FormControl<String>(),
      'tel': FormControl<String>(),
      'url': FormControl<String>(),
      'workUrl': FormControl<String>(),
      'gender': FormControl<String>(),
    },
  );
}
