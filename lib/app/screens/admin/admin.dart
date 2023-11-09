import 'package:bms/app/controller/admin_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/screens/admin/new_company.dart';
import 'package:bms/app/screens/admin/new_user.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class Admin extends GetView<AdminController> {
  const Admin({super.key});

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
                "Admin",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ],
          ),
        ),
        const Divider(),
        Obx(() {
          return ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              if (index == 0 && isExpanded) {
                controller.isCompanyExpand(isExpanded);
                controller.isUserExpand(!isExpanded);
              } else if (index == 1 && isExpanded) {
                controller.isCompanyExpand(!isExpanded);
                controller.isUserExpand(isExpanded);
              } else {
                controller.isCompanyExpand(isExpanded);
                controller.isUserExpand(isExpanded);
              }
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: const Icon(Icons.business_rounded),
                    title: const Text('Companies'),
                    trailing: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  scrollable: true,
                                  title: Text("New Company"),
                                  content: NewCompany(),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            foregroundColor: AppColors.white),
                        child: const Text('New')),
                  );
                },
                body: SizedBox(
                  height: 300,
                  child: Obx(() => PlutoGrid(
                        columns: controller.companyColumns,
                        rows: controller.genCompanyRow(controller.companyList),
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
                ),
                isExpanded: controller.isCompanyExpand.value,
                canTapOnHeader: true,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Users'),
                    trailing: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  scrollable: true,
                                  title: Text("New User"),
                                  content: NewUser(),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            foregroundColor: AppColors.white),
                        child: const Text('New')),
                  );
                },
                body: SizedBox(
                  height: 300,
                  child: Obx(() => PlutoGrid(
                        columns: controller.userColumns,
                        rows: controller.genUserRow(controller.userList),
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
                ),
                isExpanded: controller.isUserExpand.value,
                canTapOnHeader: true,
              ),
            ],
          );
        }),
      ],
    ));
  }
}
