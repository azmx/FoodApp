import 'package:flutter/material.dart';
import 'package:food_application/widget/my_color.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign align;
  final double padding; // Add padding property

  CustomText(
      {required this.text,
      required this.align,
      required this.padding // Default padding is zero
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding), // Apply padding
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          color: NatureColor.gray4,
          fontWeight: FontWeight.bold,
        ),
        textAlign: align,
      ),
    );
  }
}
