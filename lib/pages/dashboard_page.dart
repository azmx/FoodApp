
import 'package:flutter/material.dart';
import 'package:food_application/controller/dashboard__controller.dart';
import 'package:food_application/pages/menus/home_menu.dart';
import 'package:food_application/pages/menus/profile_menu.dart';
import 'package:food_application/pages/menus/saved_recipes_menu.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController());

    final List<Widget> menus = [HomeMenu(), ProfileMenu(), SavedRecipesMenu()];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: const Color.fromARGB(255, 228, 58, 58),
            unselectedItemColor: Colors.white,
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'Transaction'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      );
    });
  }
}
