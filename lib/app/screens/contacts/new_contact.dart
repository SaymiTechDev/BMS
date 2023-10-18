import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/contacts/contacts.dart';
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Type ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: ReactiveRadioListTile<ContactType>(
                            title: const Text('Individual',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            formControlName: 'type',
                            activeColor: AppColors.blue,
                            value: ContactType.individual,
                            onChanged: (v) {},
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: ReactiveRadioListTile<ContactType>(
                            title: const Text('Company',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            formControlName: 'type',
                            activeColor: AppColors.blue,
                            value: ContactType.company,
                            onChanged: (v) {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Company ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'company',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            validationMessages: {
                              'required': (error) =>
                                  'The company must not be empty'
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("DisplayName ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'displayName',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Phone ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'phone',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Mobile ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'mobile',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("E-Mail ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'email',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Website ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 300,
                          child: ReactiveTextField(
                            formControlName: 'website',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            cursorHeight: 20,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                )
                                // hintText: 'Username',
                                ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
