// ignore: file_names
import 'package:flutter/material.dart';

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
          // appBar: AppBar(
          //   title: Center(child: Text('Profile page')),
          // ),
          body: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 69, 155, 226),
                  width: double.infinity,
                  height: 90,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 60,
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  ListTile(
                    tileColor: Color.fromARGB(255, 250, 247, 237),
                    title: Text('data'),
                    trailing: Icon(Icons.settings),
                  ),
                  Column(
                    children: [Text('data'), Text('data')],
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
