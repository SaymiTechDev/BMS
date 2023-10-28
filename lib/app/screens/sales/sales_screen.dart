import 'package:bms/app/controller/slaes_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/widgets/data_grids/pluto_grid.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesScreen extends GetView<SalesController> {
  const SalesScreen({super.key});

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
                    Icons.sell_rounded,
                    color: AppColors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Sales",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Flexible(
          flex: 1,
          child: PlutoGridDemo(
              controller.salesColumns, controller.salesRows, true, "Sales"),
        )
      ],
    ));
  }
}
