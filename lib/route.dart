import 'package:food_application/pages/dashboard_page.dart';
import 'package:food_application/pages/menus/home_menu.dart';
import 'package:food_application/pages/menus/profile_menu.dart';
import 'package:food_application/pages/menus/saved_recipes_menu.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String home = '/home';
  static const String dashboard_page = '/dashboard';
  static const String profile_menu = '/profile';
  static const String saved_recipes_menu = '/saved_recipe';

  static final routes = [
    GetPage(name: home, page: () => HomeMenu()),
    GetPage(name: dashboard_page, page: () => DashboardPage()),
    GetPage(name: profile_menu, page: () => ProfileMenu()),
    GetPage(
      name: saved_recipes_menu,
      page: () => SavedRecipesMenu(),
    )
  ];
}
