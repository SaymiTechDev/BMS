import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  bool? showBack;
  Header({
    this.showBack,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.notifications),
                color: AppColors.blue,
                onPressed: () {},
              ),
              const SizedBox(
                width: 35,
              ),
              TextButton(
                onPressed: () {},
                child: Text("ADITHYA CLOTHING COMPANY",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: AppColors.blue)),
              ),
              const SizedBox(
                width: 35,
              ),
              IconButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.login);
                  },
                  icon: const Icon(
                    Icons.power_settings_new_rounded,
                    color: Colors.red,
                  )),
              const SizedBox(
                width: 35,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.lightGrey,
                      radius: 20,
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "ADMIN",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: AppColors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
