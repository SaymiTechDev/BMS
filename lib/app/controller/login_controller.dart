import 'package:bms/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginController extends GetxController {
  var isObscure = true.obs;

  final loginForm = FormGroup(
    {
      'user': FormControl<String>(validators: [Validators.required]),
      'password': FormControl<String>(validators: [Validators.required]),
    },
  );
  logIn() {
    if (!loginForm.touched) loginForm.markAllAsTouched();
    if ((loginForm.control('user').value == "admin") &&
        (loginForm.control('password').value == "admin")) {
      Get.offAndToNamed(Routes.dashboard);
    } else {
      Get.dialog(
        AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.electrical_services_rounded,
                  size: 24,
                  color: Color(0XFFe74c3c),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 30),
              const Text(
                "Error",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: const Text(
            "Enter valid User and Password",
            style: TextStyle(fontSize: 14.0),
          ),
          actions: [
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text('Okay'),
              ),
            ),
          ],
        ),
        barrierDismissible: true,
      );
    }
  }
}
