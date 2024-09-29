import 'package:food_application/model/recipe_models.dart';
import 'package:food_application/pages/recipe_page.dart';
import 'package:get/get.dart';
import '../model/drink_list.dart';

class DrinkController extends GetxController {
  // List resep yang dapat diakses dari mana saja

    // State management untuk menampilkan ingredients atau procedure
  var showIngredients = true.obs;

  void toggleIngredients() {
    showIngredients.value = true;
  }

  void toggleProcedure() {
    showIngredients.value = false;
  }

  // Navigasi ke halaman resep berdasarkan index yang dipilih
  void goToDrink(int index) {
    Get.to(() => RecipePage(), arguments: recipes[index]);
  }
}
