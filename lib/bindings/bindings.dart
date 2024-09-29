import 'package:food_application/controller/recipe_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeController());
  }
}
