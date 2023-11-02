import 'package:bms/app/controller/slaes_controller.dart';
import 'package:bms/app/data/app_colors.dart';
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
                    "Sales/Purchase",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(3, (index) {
              return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white70,
                margin: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    const ListTile(
                        title: Text(
                      // overflow: TextOverflow.ellipsis,
                      "SO0001",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                    )),
                    const ListTile(
                      title: Text(
                        "Sri Ragavendhara textile mills ",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                    const ListTile(
                      leading: Text(
                        "ramrajcotton@outlook.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                      title: Text(
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
