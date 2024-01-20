import 'package:flutter/material.dart';

class DrawerHeaderApp extends StatelessWidget {
  const DrawerHeaderApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/drawer/drawer_header.png'),

        ),
      ),
      child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(
            color: Colors.transparent
        ),
        accountName: Text(
          "Thiago Andrade",
          style: TextStyle(
              color: Colors.black
          ),

        ),
        accountEmail: Text(
          "thgas95@gmail.com",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/drawer/avatar_picture.jpg'
          ),

        ),
        otherAccountsPictures: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/drawer/avatar_picture_03.png'),
          )
        ],
      ),
    );
  }
}