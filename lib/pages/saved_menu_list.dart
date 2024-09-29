import 'package:flutter/material.dart';
import 'package:food_application/model/recipe_saved_models.dart';
import 'package:food_application/widget/card_image.dart';

class SavedMenuList extends StatelessWidget {
  final Axis scrollDirection;
  final List<Recipe> recipes = [
    Recipe(
      title: 'Recipe 1',
      chef: 'Chef 1',
      cookTime: '30 minutes',
      rating: 4.5,
      imagePath: 'assets/images/mojito.jpg',
    ),
    Recipe(
      title: 'Recipe 2',
      chef: 'Chef 2',
      cookTime: '45 minutes',
      rating: 4.8,
      imagePath: 'assets/images/meat.jpg',
    ),
    Recipe(
      title: 'Recipe 2',
      chef: 'Chef 2',
      cookTime: '45 minutes',
      rating: 4.8,
      imagePath: 'assets/images/soup.jpg',
    ),
    Recipe(
      title: 'Recipe 2',
      chef: 'Chef 2',
      cookTime: '45 minutes',
      rating: 4.8,
      imagePath: 'assets/images/mojito.jpg',
    ),
    Recipe(
      title: 'Recipe 2',
      chef: 'Chef 2',
      cookTime: '45 minutes',
      rating: 4.8,
      imagePath: 'assets/images/meat.jpg',
    ),
    Recipe(
      title: 'Recipe 2',
      chef: 'Chef 2',
      cookTime: '45 minutes',
      rating: 4.8,
      imagePath: 'assets/images/soup.jpg',
    ),
    // Add more recipes to the list
  ];
  SavedMenuList({this.scrollDirection = Axis.vertical});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          scrollDirection: scrollDirection,
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return CardImage(
                title: recipes[index].title,
                chef: recipes[index].chef,
                cookTime: recipes[index].cookTime,
                rating: recipes[index].rating,
                imagePath: recipes[index].imagePath);
          },
        ));
  }
}
