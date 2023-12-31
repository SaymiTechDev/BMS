import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:bms/app/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  static List<dynamic> menus = [
    {
      "name": "Admin",
      "color": AppColors.blue,
      "icon": Icons.article,
      "page": Routes.admin,
    },
    {
      "name": "Contacts",
      "color": AppColors.bViolet,
      "icon": Icons.contacts,
      "page": Routes.contacts,
    },
    {
      "name": "Products",
      "color": AppColors.oGreen,
      "icon": Icons.card_giftcard_rounded,
      "page": Routes.products,
    },
    {
      "name": "Finance",
      "color": AppColors.gBlue,
      "icon": Icons.pie_chart,
      "page": Routes.finance,
    },
    {
      "name": "Banking",
      "color": AppColors.pink,
      "icon": Icons.currency_rupee,
      "page": Routes.banking,
    },
    {
      "name": "Transactions",
      "color": AppColors.pGreen,
      "icon": Icons.sell,
      "page": Routes.trans,
    },
    // {
    //   "name": "Purchase",
    //   "color": AppColors.lPink,
    //   "icon": Icons.shopping_cart,
    //   "page": Routes.purchase,
    // },
    {
      "name": "Inventory",
      "color": AppColors.sandal,
      "icon": Icons.inventory,
      "page": Routes.inventory,
    },
    {
      "name": "Production",
      "color": AppColors.brown,
      "icon": Icons.precision_manufacturing_rounded,
      "page": Routes.production,
    },
    {
      "name": "Settings",
      "color": AppColors.lBlue,
      "icon": Icons.settings,
      "page": Routes.settings,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(
          body: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 1.5,
        child: GridView.count(
          crossAxisCount: 5,
          children: List.generate(menus.length, (index) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(menus[index]["page"]);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 25,
                  fixedSize: const Size(135, 100),
                  backgroundColor: menus[index]["color"],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      menus[index]["icon"],
                      color: AppColors.white,
                      shadows: [
                        Shadow(
                            color: Colors.grey.shade700,
                            blurRadius: 5,
                            offset: const Offset(-10, 10))
                      ],
                      size: 60,
                    ),
                    Text(
                      menus[index]["name"],
                      style: TextStyle(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      )),
    );
  }
}
