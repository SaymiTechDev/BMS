import 'package:bms/app/data/app_colors.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Widget body;
  const MainContainer({
    required this.body,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.gradientBackGround),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black87, //change your color here
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            const SizedBox(
              width: 35,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("BUSINESS MANAGEMENT SOFTWARE",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.black87)),
            ),
            const SizedBox(
              width: 35,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.white,
                    radius: 20,
                    child: const Text(
                      "A",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "ADMIN",
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(alignment: AlignmentDirectional.topCenter, child: body),
      ),
    );
  }
}
