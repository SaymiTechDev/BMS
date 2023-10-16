import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NewContact extends GetView<ContactsController> {
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Row(
              children: [
                Text(
                  "New Contact",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
              padding: const EdgeInsets.all(10),
              child: ReactiveForm(
                formGroup: controller.vCardForm,
                child: Row(
                  children: [
                    ReactiveRadio(
                      value: false,
                      formControlName: 'isIndividual',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Company",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ReactiveRadio(
                      value: false,
                      formControlName: 'isCompany',
                    )
                  ],
                ),
              )
              // child: const Row(
              //   children: [
              //
              //     Text(
              //       "Type",
              //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //   ],
              // ),
              ),
        ],
      ),
    );
  }
}
