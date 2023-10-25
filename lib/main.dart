import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/routes/routes.dart';
import 'package:bms/app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMS',
      theme: ThemeData(
        primaryColor: AppColors.blue,
        useMaterial3: true,
        textTheme: GoogleFonts.exo2TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      getPages: Routes.routesList,
    );
  }
}

initServices() async {
  Get.put<ApiService>(ApiService());
}
