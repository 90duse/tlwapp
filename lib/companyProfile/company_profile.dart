// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tlwapp/component/profileContainer.dart';
import 'package:faker/faker.dart';
import 'package:tlwapp/component/profileListTile.dart';
import 'package:tlwapp/component/drawer_listTile.dart';

class company_Profile extends StatefulWidget {
  const company_Profile({super.key});

  @override
  State<company_Profile> createState() => _company_ProfileState();
}

class _company_ProfileState extends State<company_Profile> {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Company Profile')),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 2, bottom: 10),
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: double.infinity,
              child: Column(
                children: [
                  //COMPANY ID
                  const Visibility(
                    visible: false,
                    child: profileContainer(
                      cunug: profileListTile(
                          editIcon: Icons.settings,
                          labalhint: 'ID',
                          textname: 111),
                    ),
                  ),

                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white10,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      faker.company.name(),
                    )),
                  ),

                  Card(child: Text(faker.internet.safeEmail())),

                  //bio
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 150,
                      child: Column(
                        children: [
                          Text(faker.lorem.sentences(5).toString()),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook),
                                Icon(Icons.email),
                                Icon(Icons.message),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  profileContainer(
                      cunug: drawerList_tile(
                          icon: Icons.edit,
                          botton: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 10, 97, 228),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Edit',
                                style: TextStyle(color: Colors.white),
                              )))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
