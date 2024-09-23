import 'package:flutter/material.dart';
import 'package:food_application/pages/dashboard_page.dart';
import 'package:food_application/pages/menus/home_menu.dart';
import 'package:get/get.dart';
import 'package:food_application/route.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.dashboard_page,
      getPages: AppRoutes.routes,
    );
  }
}

