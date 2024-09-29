import 'package:flutter/material.dart';
import 'package:food_application/pages/saved_menu_list.dart';
import 'package:food_application/widget/card_image.dart';

class SavedRecipesMenu extends StatelessWidget {
  const SavedRecipesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 600,
        height: double.infinity,
        child: SavedMenuList(),
      )
    ]);
  }
}
