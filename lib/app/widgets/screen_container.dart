import 'package:bms/app/data/app_colors.dart';
import 'package:flutter/material.dart';

import 'main_container.dart';

class ScreenContainer extends StatelessWidget {
  final Widget body;
  const ScreenContainer({
    required this.body,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            // width: MediaQuery.of(context).size.width / 1.05,
            // height: MediaQuery.of(context).size.height / 1.15,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15)
              ],
            ),
            child: body),
      ),
    );
  }
}
