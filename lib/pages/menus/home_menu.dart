import 'package:flutter/material.dart';
import 'package:food_application/controller/button_category_controller.dart';
import 'package:food_application/pages/drink_list.dart';
import 'package:food_application/pages/recipe_list.dart';
import 'package:food_application/pages/saved_menu_list.dart';
import 'package:food_application/widget/custom_buttonRow.dart';
import 'package:food_application/widget/custum_button.dart';
import 'package:food_application/widget/mySearchBar.dart';
import 'package:food_application/widget/myText.dart';
import 'package:food_application/widget/my_color.dart';
import 'package:food_application/widget/recipeCard.dart';
import 'package:get/get.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeMenuController controller = Get.put(HomeMenuController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: PrimaryColor.primaryColor80,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: MySearchBar(),
              ),
            ),
            Expanded(
              child: Container(
                color: NatureColor.white,
                child: ListView(children: [
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: Container(
                        height: 50,
                        width: 600,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CustomButtonRow(
                                buttonLabels: controller.buttonLabels,
                                onPressedCallbacks:
                                    controller.onPressedCallbacks)
                          ],
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      height: 200,
                      width: 150,
                      child: SavedMenuList(
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: Container(
                          height: 255, width: 150, child: RecipeListView())),
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: Container(
                          height: 255, width: 150, child: DrinkList()))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
