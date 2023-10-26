import 'package:bms/app/widgets/layouts/pluto_layout.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenContainer(body: PlutoContainer());
  }
}
