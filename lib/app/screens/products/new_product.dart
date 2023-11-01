import 'package:bms/app/controller/products_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NewProduct extends GetView<ProductsController> {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, bottom: 15, right: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: ReactiveForm(
            formGroup: controller.productForm,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'sku',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Product Code",
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
                        formControlName: 'productName',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Product Name",
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
                      child: ReactiveDropdownField<String>(
                          formControlName: 'productType',
                          style: const TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            labelText: "Product Type",
                            labelStyle: TextStyle(color: AppColors.blue),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.blue),
                            ),
                          ),
                          items: DataList.productType
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList()),
                    ),
                    SizedBox(
                      width: 300,
                      child: ReactiveTextField(
                        formControlName: 'productGroup',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Product Group",
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
                        formControlName: 'uom',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Uom",
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
                        formControlName: 'spu',
                        style: const TextStyle(fontSize: 14),
                        cursorColor: AppColors.lBlue,
                        // cursorHeight: 20,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            labelText: "Sale Pack Unit",
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
                SizedBox(
                  width: 300,
                  child: ReactiveTextField(
                    formControlName: 'hsnCode',
                    style: const TextStyle(fontSize: 14),
                    cursorColor: AppColors.lBlue,
                    // cursorHeight: 20,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        labelText: "HSN Code",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    ),
                    Row(
                      children: [
                        Text(
                          "Stock ",
                          style: TextStyle(color: AppColors.blue),
                        ),
                        ReactiveCheckbox(
                          formControlName: "isStock",
                          activeColor: AppColors.pGreen,
                        ),
                      ],
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
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  var resp = controller.addProducts();
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
                          "Product not added",
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
