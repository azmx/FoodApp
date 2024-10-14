import 'package:flutter/material.dart';
import 'package:food_application/widget/custom_listTile.dart';
import 'package:food_application/widget/my_color.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: NatureColor.white,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/ali.jpg'),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Muhammad Ali',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Column(
          children: [
            CustomListtile(
              color: PrimaryColor.primaryColor80,
              iconData: Icons.person,
              title: 'Edit Profile',
              radius: 8,
            ),
            CustomListtile(
              color: PrimaryColor.primaryColor80,
              iconData: Icons.settings,
              title: 'Setting',
              radius: 8,
            ),
            CustomListtile(
              color: PrimaryColor.primaryColor80,
              iconData: Icons.logout,
              title: 'Logout',
              radius: 8,
            )
          ],
        ),
      ]),
    );
  }
}
