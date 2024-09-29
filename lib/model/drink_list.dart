 import 'package:food_application/model/recipe_models.dart';

final List<RecipeModel> recipes = [
    RecipeModel(
      time: '5 mins',
      rating: 0,
      name: 'Es Teler',
      imageUrl:
          'https://image.popmama.com/content-images/post/20240222/Resep%20Es%20Teler%2077%202-iIWtoR6Q8w9JGYjmOMkf2FrXUnCiVE0U.jpg?width=600&height=315',
      ingredients: [
        {'name': 'Chicken', 'amount': '200g'},
        {'name': 'Bun', 'amount': '2 pieces'},
      ],
      procedure: ['Step 1: Cook the chicken', 'Step 2: Assemble the burger','Step 1: Cook the chicken', 'Step 2: Assemble the burger'],
    ),
    RecipeModel(
      time: '7 mins',
      rating: 0,
      name: 'Manggo Thai',
      imageUrl:
          'https://media.sukabumiupdate.com/media/2023/02/22/1677046983_63f5b4c7eec4b_ouvFsg4jM7RFW36r5UBe.jpg',
      ingredients: [
        {'name': 'Lettuce', 'amount': '100g'},
        {'name': 'Tomato', 'amount': '50g'},
      ],
      procedure: ['Step 1: Chop vegetables', 'Step 2: Mix everything together'],
    ),
    RecipeModel(
      time: '6 mins',
      rating: 0,
      name: 'Es Buah',
      imageUrl:
          'https://cdn.idntimes.com/content-images/community/2024/03/vecteezy-mixing-ice-fruit-on-the-medium-glass-with-red-sugar-the-2409981611-e19c76cf1b28908665001625bb727ae6-03b86e551f7287c74d36e06f751f11d2.jpg',
      ingredients: [
        {'name': 'Lettuce', 'amount': '100g'},
        {'name': 'Tomato', 'amount': '50g'},
      ],
      procedure: ['Step 1: Chop vegetables', 'Step 2: Mix everything together'],
    ),
    // Tambahkan resep lainnya jika perlu
  ];