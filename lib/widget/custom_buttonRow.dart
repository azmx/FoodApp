import 'package:flutter/material.dart';
import 'package:food_application/widget/custum_button.dart';
import 'package:food_application/widget/my_color.dart';

class CustomButtonRow extends StatelessWidget {
  final List<String> buttonLabels;
  final List<VoidCallback> onPressedCallbacks;

  const CustomButtonRow({
    Key? key,
    required this.buttonLabels,
    required this.onPressedCallbacks,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        color: PrimaryColor.primaryColor80,
        height: 40,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(buttonLabels.length, (index) {
              return Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  width: 120,
                  child: Custombutton(
                    TextButton: buttonLabels[index],
                    backgroundColor: (index == 0)
                        ? PrimaryColor.primaryColor100
                        : NatureColor.white,
                    onPressed: onPressedCallbacks[index],
                    iconLeft: null,
                    foregroundColor: NatureColor.white,
                    borderSideColor: Colors.transparent,
                    textColor: (index == 0)
                        ? NatureColor.white
                        : PrimaryColor.primaryColor80,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
