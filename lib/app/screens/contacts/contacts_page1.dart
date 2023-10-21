import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsPage1 extends GetView<ContactsController> {
  const ContactsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        body: Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.contacts,
                    color: AppColors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Contacts",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.newContact);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ))
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(50, (index) {
              return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white70,
                margin: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    ListTile(
                        leading: Icon(
                          Icons.business,
                          size: 60,
                          color: AppColors.lBlue,
                        ),
                        title: const Text(
                          // overflow: TextOverflow.ellipsis,
                          "Sri Sumangali redymades and textiles",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 16),
                        )),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 20,
                        color: AppColors.dBlue,
                      ),
                      title: const Text(
                        "8870746955",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        size: 20,
                        color: AppColors.dBlue,
                      ),
                      title: const Text(
                        "ramrajcotton@outlook.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.pin_drop_outlined,
                        size: 20,
                        color: AppColors.dBlue,
                      ),
                      title: const Text(
                        "10,Ramraj V Tower,Sengunthapuram,Mangalam Road, Tiruppur - 637001",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.currency_rupee_outlined,
                        size: 20,
                        color: AppColors.dBlue,
                      ),
                      title: const Text(
                        "50000",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    ));
  }
}
