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
          padding: const EdgeInsets.only(left: 25, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: ReactiveForm(
            formGroup: controller.vCardForm,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
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
                            textAlignVertical: TextAlignVertical.center,
                            validationMessages: {
                              'required': (error) =>
                                  'The company must not be empty'
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.blue),
                              ),
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
                            // cursorHeight: 20,
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
                            // cursorHeight: 20,
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
                            // cursorHeight: 20,
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
                            // cursorHeight: 20,
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
                            // cursorHeight: 20,
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
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("Gst Treatment ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 45,
                          width: 250,
                          child: ReactiveDropdownField<String>(
                              formControlName: 'gstTreatment',
                              style: const TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                              items: DataList.gstTreatment
                                  .map((e) => DropdownMenuItem(
                                      value: e, child: Text(e)))
                                  .toList()),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Gst No ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'gstNo',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Pan No ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'panNo',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Payment Terms ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'paymentTerms',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Discount ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'discount',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Relationship Type ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 45,
                          width: 200,
                          child: ReactiveDropdownField<String>(
                              formControlName: 'relationShipType',
                              style: const TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                              items: DataList.relationShip
                                  .map((e) => DropdownMenuItem(
                                      value: e, child: Text(e)))
                                  .toList()),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("Bank Name ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'bankName',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Benificiary ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'benificiaryName',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Account No ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'accountNo',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("Ifsc Code ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'ifscCode',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
                        const Text("UPI ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 15,
                          width: 200,
                          child: ReactiveTextField(
                            formControlName: 'upiId',
                            style: const TextStyle(fontSize: 14),
                            cursorColor: AppColors.lBlue,
                            // cursorHeight: 20,
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
              ],
            ),
          ),
        ),
        const Divider(),
        SizedBox(
            height: 175,
            width: Get.width,
            child: PlutoGridDemo(
                controller.addressColumns, controller.addressRows, false)),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  controller.addContacts();
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
