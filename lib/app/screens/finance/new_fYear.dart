import 'package:bms/app/controller/finance_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NewFYear extends GetView<FinanceController> {
  const NewFYear({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, bottom: 15, right: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: ReactiveForm(
            formGroup: controller.fYearForm,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'fYear',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: "Fin Year",
                          labelStyle: TextStyle(color: AppColors.dBlue),
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
                      // child: ReactiveTextField(
                      //   formControlName: 'startDate',
                      //   style: const TextStyle(fontSize: 14),
                      //   cursorColor: AppColors.lBlue,
                      //
                      //   textAlignVertical: TextAlignVertical.center,
                      //   decoration: InputDecoration(
                      //       labelText: "Start Date",
                      //       labelStyle: TextStyle(color: AppColors.dBlue),
                      //       border: const UnderlineInputBorder(
                      //           borderSide: BorderSide.none),
                      //       focusedBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(color: AppColors.blue),
                      //       )
                      //     // hintText: 'Username',
                      //   ),
                      // ),
                      child: ReactiveDateTimePicker(
                        formControlName: 'startDate',
                        decoration: const InputDecoration(
                          labelText: 'Start Date',
                          border: OutlineInputBorder(),
                          helperText: '',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      // child: ReactiveTextField(
                      //   formControlName: 'parentAccount',
                      //   style: const TextStyle(fontSize: 14),
                      //   cursorColor: AppColors.lBlue,
                      //   // cursorHeight: 20,
                      //   textAlignVertical: TextAlignVertical.center,
                      //   decoration: InputDecoration(
                      //       labelText: "Parent Account",
                      //       labelStyle: TextStyle(color: AppColors.dBlue),
                      //       border: const UnderlineInputBorder(
                      //         borderSide: BorderSide.none,
                      //       ),
                      //       focusedBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(color: AppColors.blue),
                      //       )
                      //       // hintText: 'Username',
                      //       ),
                      // ),
                      child: ReactiveDateTimePicker(
                        formControlName: 'endDate',
                        decoration: const InputDecoration(
                          labelText: 'End Date',
                          border: OutlineInputBorder(),
                          helperText: '',
                          suffixIcon: Icon(Icons.calendar_today),
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
                  var resp = controller.addFYear();
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
                          "FYear not added",
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
