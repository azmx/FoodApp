import 'package:flutter/material.dart';
import 'package:food_application/pages/saved_menu_list.dart';
import 'package:food_application/widget/card_image.dart';
import 'package:food_application/widget/my_color.dart';

class SavedRecipesMenu extends StatelessWidget {
  const SavedRecipesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: NatureColor.white,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Saved Recipes',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(children: [
          Container(
            width: 600,
            height: double.infinity,
            child: SavedMenuList(),
          )
        ]),
      ),
    );
  }
}
