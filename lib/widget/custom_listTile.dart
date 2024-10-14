import 'package:flutter/material.dart';
import 'package:food_application/widget/my_color.dart';

class CustomListtile extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;
  final double radius;

  const CustomListtile({
    super.key,
    required this.title,
    required this.color,
    required this.iconData,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: ListTile(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        leading: Icon(iconData),
        tileColor: color,
        title: Text(title),
      ),
    );
  }
}
