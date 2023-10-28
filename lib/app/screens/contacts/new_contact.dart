import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/contacts/contacts.dart';
import 'package:bms/app/data/values.dart';
import 'package:bms/app/widgets/data_grids/pluto_grid.dart';
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
                            value: ContactType.individual,
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
                            value: ContactType.company,
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
                        formControlName: 'paymentTerms',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Payment Terms",
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
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
                        formControlName: 'discount',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Discount",
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
                            ),
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(),
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
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 175,
            width: Get.width,
            child: PlutoGridDemo(controller.addressColumns,
                controller.addressRows, false, "Address")),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  controller.addContacts();
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pGreen,
                    foregroundColor: AppColors.white),
                child: const Text("Save"))
          ],
        )
      ],
    );
  }
}
