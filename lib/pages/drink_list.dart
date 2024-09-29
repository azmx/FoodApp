import 'package:flutter/material.dart';
import 'package:food_application/controller/drink_controller.dart';
import 'package:food_application/controller/recipe_controller.dart';
import 'package:get/get.dart';
import 'package:food_application/widget/recipe_card.dart';
import 'package:food_application/model/drink_list.dart';

class DrinkList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final DrinkController drinkController = Get.put(DrinkController());
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Container(
            width: 200,
            child: RecipeCard2(
              imageUrl: recipe.imageUrl,
              recipeName: recipe.name,
              rating: recipe.rating,
              time: recipe.time,
              onPressed: () {
                drinkController.goToDrink(index);
              },
            ),
          );
        },
      ),
    );
  }
}
