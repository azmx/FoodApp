import 'package:flutter/material.dart';
import 'package:food_application/controller/recipe_controller.dart';
import 'package:get/get.dart';
import 'package:food_application/widget/recipe_card.dart';
import 'package:food_application/model/food_list.dart';

class RecipeListView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final RecipeController recipeController = Get.find();
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
                recipeController.goToRecipe(index);
              },
            ),
          );
        },
      ),
    );
  }
}
