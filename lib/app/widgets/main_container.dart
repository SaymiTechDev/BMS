import 'package:bms/app/controller/main_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/data/companies/companies.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainContainer extends GetView<MainController> {
  final Widget body;

  const MainContainer({
    required this.body,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.gradientBackGround),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black87, //change your color here
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            const SizedBox(
              width: 35,
            ),
            DropdownButton(
              // Initial Value
              value: controller.companyName.value.toUpperCase(),
              // Array list of items
              items: controller.companyList.map((Companies items) {
                return DropdownMenuItem(
                  value: items.companyName!,
                  child: Text(items.companyName!.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.black87)),
                );
              }).toList(),
              // After selecting the desired option,it will
              underline: const SizedBox(),
              // change button value to selected value
              onChanged: (String? newValue) {
                Get.offAllNamed(Routes.dashboard);
                controller.companyName(newValue!);
              },
            ),
            const SizedBox(
              width: 35,
            ),
            PopupMenuButton(
              onOpened: () {},
              itemBuilder: (BuildContext context) {
                return List.generate(controller.menus.length, (index) {
                  return PopupMenuItem(
                    value: index,
                    child: controller.menus[index],
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 20,
                      child: Obx(() {
                        return Text(
                          controller.user.value[0].toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        );
                      }),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Obx(() {
                      return Text(
                        controller.user.value.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.black87),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Container(alignment: AlignmentDirectional.topCenter, child: body),
      ),
    );
  }
}
