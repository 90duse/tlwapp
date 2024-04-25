// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tlwapp/component/drawer_listTile.dart';
import 'package:tlwapp/screens/userProfile.dart';

class userDrawer extends StatefulWidget {
  const userDrawer({super.key});

  @override
  State<userDrawer> createState() => _userDrawerState();
}

class _userDrawerState extends State<userDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(31, 0, 0, 0),
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.person,
            color: Colors.white,
            size: 60,
          )),
          drawerList_tile(
              icon: Icons.home,
              botton: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const userProfile()));
                  },
                  child: Text('P R O F I L E'))),
          drawerList_tile(
              icon: Icons.login_outlined,
              botton: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text('L O G O U T'))),
        ],
      ),
    );
  }
}