import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
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
                    SizedBox(
                      height: 35,
                      width: 250,
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10),
                        shadowColor: AppColors.blue,
                        child: ReactiveTextField(
                          formControlName: 'company',
                          cursorColor: AppColors.lBlue,
                          cursorHeight: 20,
                          textAlignVertical: TextAlignVertical.center,
                          validationMessages: {
                            'required': (error) => 'The user must not be empty'
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: AppColors.blue),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: AppColors.blue),
                            ),
                            //   filled: true,
                            // labelStyle: TextStyle(color: AppColors.lBlue),
                            // labelText: "Company",
                            //   fillColor: Colors.white70,
                          ),
                        ),
                      ),
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
