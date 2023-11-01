import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/contacts/contacts.dart';
import 'package:bms/app/data/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NewContact extends GetView<ContactsController> {
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, bottom: 15, right: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: ReactiveForm(
            formGroup: controller.vCardForm,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 160,
                          child: ReactiveRadioListTile<ContactType>(
                            title: const Text('Individual',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            formControlName: 'type',
                            activeColor: AppColors.blue,
                            value: ContactType.I,
                            onChanged: (v) {},
                          ),
                        ),
                        SizedBox(
                          //height: 50,
                          width: 150,
                          child: ReactiveRadioListTile<ContactType>(
                            title: const Text('Company',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            formControlName: 'type',
                            activeColor: AppColors.blue,
                            value: ContactType.C,
                            onChanged: (v) {},
                          ),
                        )
                      ],
                    ),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 250,
                      child: ReactiveTextField(
                        formControlName: 'paymentTerms',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Payment Terms",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 250,
                      child: ReactiveTextField(
                        formControlName: 'discount',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Discount",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 250,
                      child: ReactiveDropdownField<String>(
                          formControlName: 'relationShipType',
                          style: const TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            labelText: "RelationShip",
                            labelStyle: TextStyle(color: AppColors.blue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            ),
                          ),
                          items: DataList.relationShip
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList()),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'bankName',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Bank",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'benificiaryName',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Benificiary Name",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'accountNo',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Account Number",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'ifscCode',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Ifsc Code",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'upiId',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "UPI ID",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                    SizedBox(
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'accountPayable',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Account Payable",
                            labelStyle: TextStyle(color: AppColors.blue),
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
                      width: 200,
                      child: ReactiveTextField(
                        formControlName: 'accountReceivable',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Account Receivable",
                            labelStyle: TextStyle(color: AppColors.blue),
                            border: const UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            )
                            // hintText: 'Username',
                            ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Active ",
                          style: TextStyle(color: AppColors.blue),
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
                  var resp = controller.addContacts();
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
                          "Contact not added",
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
