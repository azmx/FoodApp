import 'package:flutter/material.dart';
import 'package:food_application/controller/recipe_controller.dart';
import 'package:get/get.dart';
import 'package:food_application/model/recipe_models.dart';

class RecipePage extends StatelessWidget {
  // Resep akan dikirim menggunakan Get.arguments
  final RecipeModel recipe = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
        children: [
          // Gambar Resep
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(recipe.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),

          // Tombol Ingredients dan Procedure
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<RecipeController>().toggleIngredients(); // Memanggil method untuk menampilkan ingredients
                },
                child: Text('Ingredients'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Get.find<RecipeController>().toggleProcedure(); // Memanggil method untuk menampilkan procedure
                },
                child: Text('Procedure'),
              ),
            ],
          ),

          // Menampilkan Ingredients atau Procedure sesuai dengan state
          Obx(() {
            return Expanded(
              child: ListView.builder(
                itemCount: Get.find<RecipeController>().showIngredients.value
                    ? recipe.ingredients.length
                    : recipe.procedure.length,
                itemBuilder: (context, index) {
                  if (Get.find<RecipeController>().showIngredients.value) {
                    // Menampilkan ingredients
                    final ingredient = recipe.ingredients[index];
                    return ListTile(
                      title: Text(ingredient['name']!),
                      trailing: Text(ingredient['amount']!),
                    );
                  } else {
                    // Menampilkan procedure
                    return ListTile(
                      title: Text(recipe.procedure[index]),
                    );
                  }
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
