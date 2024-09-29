import 'package:food_application/model/recipe_models.dart';

final List<RecipeModel> recipes = [
    RecipeModel(
      time: '23 mins',
      rating: 9,
      name: 'Spaghetti Bolognese',
      imageUrl:
          'https://staticcookist.akamaized.net/wp-content/uploads/sites/22/2021/06/THUMB-LINK-2020-2.jpg',
      ingredients: [
        {'name': 'Chicken', 'amount': '200g'},
        {'name': 'Bun', 'amount': '2 pieces'},
      ],
      procedure: ['Step 1: Cook the chicken', 'Step 2: Assemble the burger','Step 1: Cook the chicken', 'Step 2: Assemble the burger'],
    ),
    RecipeModel(
      time: '10 mins',
      rating: 8,
      name: 'Vegetable Salad',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJie5ltcbX1AkHOMedrXtX_Lqy5DbmjVJUw&s',
      ingredients: [
        {'name': 'Lettuce', 'amount': '100g'},
        {'name': 'Tomato', 'amount': '50g'},
      ],
      procedure: ['Step 1: Chop vegetables', 'Step 2: Mix everything together'],
    ),
    RecipeModel(
      time: '20 mins',
      rating: 7,
      name: 'Vegetable Salad',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod/images/beef-stew-index-652e94c53b39b.jpg?crop=0.8891301070405547xw:1xh;center,top&resize=1200:*',
      ingredients: [
        {'name': 'Lettuce', 'amount': '100g'},
        {'name': 'Tomato', 'amount': '50g'},
      ],
      procedure: ['Step 1: Chop vegetables', 'Step 2: Mix everything together'],
    ),
    // Tambahkan resep lainnya jika perlu
  ];