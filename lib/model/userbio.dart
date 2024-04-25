// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tlwapp/component/profileListTile.dart';

class userBio extends StatefulWidget {
  const userBio({super.key});

  @override
  State<userBio> createState() => _userBioState();
}

class _userBioState extends State<userBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Text('ID'),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(8),
            child: profileListTile(
                editIcon: Icons.settings,
                labalhint: 'name',
                textname: 'John Doe'),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(8),
            child: profileListTile(
                editIcon: Icons.settings,
                labalhint: 'Email',
                textname: 'example@gmail.com'),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                profileListTile(
                    editIcon: Icons.settings,
                    labalhint: 'Gender',
                    textname: 'Male'),
                ListTile(
                  tileColor: Color.fromARGB(255, 255, 255, 255),
                  title: Text(
                    'Phone',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 112, 112, 112)),
                  ),
                  subtitle: Text('455555'),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(8),
            child: profileListTile(
                editIcon: Icons.settings,
                labalhint: 'Day of birth',
                textname: '11/11/24'),
          ),
          // Is email verified
          // Container(
          //   alignment: Alignment.topLeft,
          //   padding: EdgeInsets.all(8),
          //   child: profileListTile(
          //       editIcon: Icons.settings, labalhint: '', textname: ''),
          // ),
        ],
      ),
    );
  }
}
