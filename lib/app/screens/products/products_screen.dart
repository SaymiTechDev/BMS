import 'package:bms/app/controller/products_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/widgets/data_grids/pluto_grid.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsScreen extends GetView<ProductsController> {
  const ProductsScreen({super.key});

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
                    Icons.card_giftcard_rounded,
                    color: AppColors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Products",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     ElevatedButton(
              //         onPressed: () {
              //           showDialog(
              //               context: context,
              //               builder: (BuildContext context) {
              //                 return const AlertDialog(
              //                   scrollable: true,
              //                   title: Text("New Contacts"),
              //                  // content: NewContact(),
              //                 );
              //               });
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor: AppColors.blue,
              //             foregroundColor: AppColors.white),
              //         child: const Text('New'))
              //   ],
              // ),
            ],
          ),
        ),
        const Divider(),
        Flexible(
            flex: 1,
            child: PlutoGridDemo(controller.productColumns,
                controller.productRows, false, "Products"))
      ],
    ));
  }
}
