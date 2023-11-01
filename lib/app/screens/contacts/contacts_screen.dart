import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/screens/contacts/new_contact.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class ContactsScreen extends GetView<ContactsController> {
  const ContactsScreen({super.key});

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
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                scrollable: true,
                                title: Text("New Contacts"),
                                content: NewContact(),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          foregroundColor: AppColors.white),
                      child: const Text('New'))
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Flexible(
          flex: 1,
          child: Obx(() => PlutoGrid(
                columns: controller.contactColumns,
                rows: controller.genContactRow(controller.contactList),
                key: UniqueKey(),
                mode: PlutoGridMode.readOnly,
                configuration: PlutoGridConfiguration(
                  style: PlutoGridStyleConfig(
                    enableGridBorderShadow: true,
                    gridBorderColor: AppColors.lBlue,
                    gridBorderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
        )
      ],
    ));
  }
}
