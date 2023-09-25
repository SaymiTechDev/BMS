import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsPage extends GetView<ContactsController> {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        body: Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
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
        ),
        const Divider(),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(50, (index) {
              return const Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white70,
                margin: EdgeInsets.all(25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.business,
                      size: 100,
                      color: Colors.grey,
                    ),
                    // Divider(),
                    Text(
                      "Ramraj Cotton,",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "RAMRAJ ‘V’ Tower,",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "No.10,Sengunthapuram,1st Street, Mangalam Road,TIRUPPUR,",
                      style: TextStyle(fontSize: 14),
                    )
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
