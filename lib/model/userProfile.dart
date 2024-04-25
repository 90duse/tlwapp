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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          appBar: AppBar(
            title: Center(child: Text('Profile')),
            backgroundColor: Colors.black,
            titleTextStyle: TextStyle(color: Colors.white),
          ),
          body: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(10),
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

              // Is email verified
              // Container(
              //   alignment: Alignment.topLeft,
              //   padding: EdgeInsets.all(8),
              //   child: profileListTile(
              //       editIcon: Icons.settings, labalhint: '', textname: ''),
              // ),
              profileContainer(
                cunug: ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.more,
                    color: Colors.white,
                  ),
                ),
              ),

              ElevatedButton(onPressed: () {}, child: Text('Edit Profile'))
            ],
          ),
        ));
  }
}
