import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMS',
      theme: ThemeData(
        primaryColor: AppColors.blue,
        useMaterial3: true,
        textTheme: GoogleFonts.sourceSans3TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      getPages: Routes.routesList,
    );
  }
}
