// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tlwapp/component/profileContainer.dart';
import 'package:tlwapp/component/profileListTile.dart';
import 'package:tlwapp/model/drawer_listTile.dart';

// ignore: camel_case_types
class userProfile extends StatefulWidget {
  const userProfile({super.key});

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  bool Isvisible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          appBar: AppBar(
            title: Center(child: Text('Profile')),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
          ),
          body: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 250),
                  padding: EdgeInsets.only(top: 2, bottom: 10),
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 60,
                      ),
                      Text('example@gmail.com'),
                      Text('Rates _ 4 Stars'),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: false,
                child: profileContainer(
                  cunug: profileListTile(
                      editIcon: Icons.settings, labalhint: 'ID', textname: 111),
                ),
              ),

              profileContainer(
                cunug: profileListTile(
                    editIcon: Icons.settings,
                    labalhint: 'name',
                    textname: 'John Doe'),
              ),

              profileContainer(
                cunug: profileListTile(
                    editIcon: Icons.settings,
                    labalhint: 'Email',
                    textname: 'example@gmail.com'),
              ),

              profileContainer(
                cunug: Column(
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
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      subtitle: Text('455555'),
                    )
                  ],
                ),
              ),

              profileContainer(
                cunug: profileListTile(
                    editIcon: Icons.settings,
                    labalhint: 'Day of birth',
                    textname: '11/11/24'),
              ),

              //Is email verified
              Visibility(
                visible: false,
                child: profileContainer(
                  cunug: profileListTile(
                      editIcon: Icons.settings,
                      labalhint: 'Verify Email',
                      textname: 'Email'),
                ),
              ),
              //OTP
              Visibility(
                visible: false,
                child: profileContainer(
                  cunug: profileListTile(
                      editIcon: Icons.settings,
                      labalhint: 'OTP',
                      textname: 'OTP'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Edit Profile')),
              )
            ],
          ),
        ));
  }
}
