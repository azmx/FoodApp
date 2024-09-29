import 'package:flutter/material.dart';
import 'package:food_application/widget/my_color.dart';

class MySearchBar extends StatelessWidget {
  final Function(String)? onChanged;

  const MySearchBar({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search recipes...',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: NatureColor.gray4)),
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: NatureColor.white,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
