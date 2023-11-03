import 'package:bms/app/controller/admin_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NewCompany extends GetView<AdminController> {
  const NewCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, bottom: 15, right: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: ReactiveForm(
            formGroup: controller.companyForm,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'company',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        textAlignVertical: TextAlignVertical.center,
                        validationMessages: {
                          'required': (error) => 'The company must not be empty'
                        },
                        decoration: InputDecoration(
                          labelText: "Company*",
                          labelStyle: TextStyle(color: AppColors.lPink),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'displayName',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Display Name",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'phone',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Phone",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'mobile',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Mobile",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'email',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "E-Mail",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'website',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "WebSite",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: ReactiveDropdownField<String>(
                          formControlName: 'gstTreatment',
                          style: const TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            labelText: "Gst Treatment",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            ),
                          ),
                          items: DataList.gstTreatment
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList()),
                    ),
                    SizedBox(
                      width: 250,
                      child: ReactiveTextField(
                        formControlName: 'gstNo',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "GstNo",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ReactiveTextField(
                        formControlName: 'panNo',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Pan No",
                            labelStyle: TextStyle(color: AppColors.dBlue),
                            border: const UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Active ",
                          style: TextStyle(color: AppColors.dBlue),
                        ),
                        ReactiveCheckbox(
                          formControlName: "isActive",
                          activeColor: AppColors.pGreen,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  var resp = controller.addCompany();
                  if (resp != null) {
                    Get.back();
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
                          "Company not added",
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
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pGreen,
                    foregroundColor: AppColors.white),
                child: const Text("Add"))
          ],
        )
      ],
    );
  }
}
