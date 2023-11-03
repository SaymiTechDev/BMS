import 'package:bms/app/controller/finance_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/screens/finance/new_coa.dart';
import 'package:bms/app/screens/finance/new_fYear.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class FinanceScreen extends GetView<FinanceController> {
  const FinanceScreen({super.key});

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
                Icons.add_chart,
                color: AppColors.blue,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Finance",
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
                controller.isFinYearExpand(isExpanded);
                controller.isCoaExpand(!isExpanded);
              } else if (index == 1 && isExpanded) {
                controller.isFinYearExpand(!isExpanded);
                controller.isCoaExpand(isExpanded);
              } else {
                controller.isFinYearExpand(isExpanded);
                controller.isCoaExpand(isExpanded);
              }
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: const Icon(Icons.access_time),
                    title: const Text('Financial Year'),
                    trailing: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  scrollable: true,
                                  title: Text("Financial Year"),
                                  content: NewFYear(),
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
                        columns: controller.fYearColumns,
                        rows: controller.genFYearRow(controller.finYearList),
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
                isExpanded: controller.isFinYearExpand.value,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: const Icon(Icons.bar_chart),
                    title: const Text('Chart Of Accounts'),
                    trailing: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  scrollable: true,
                                  title: Text("Chart Of Account"),
                                  content: NewCoa(),
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
                        columns: controller.coaColumns,
                        rows: controller.genCoaRow(controller.coaList),
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
                isExpanded: controller.isCoaExpand.value,
              ),
            ],
          );
        }),
      ],
    ));
  }
}
