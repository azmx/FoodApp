import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_application/controller/dashboard__controller.dart';
import 'package:food_application/pages/menus/home_menu.dart';
import 'package:food_application/pages/menus/profile_menu.dart';
import 'package:food_application/pages/menus/saved_recipes_menu.dart';
import 'package:food_application/widget/my_color.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController());

    final List<Widget> menus = [HomeMenu(), SavedRecipesMenu(), ProfileMenu()];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: NatureColor.white,
            selectedItemColor: PrimaryColor.primaryColor100,
            unselectedItemColor: PrimaryColor.primaryColoq60,
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_sharp), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark), label: 'Saved Menu'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      );
    });
  }
}
