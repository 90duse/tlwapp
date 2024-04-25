import 'package:flutter/material.dart';

class company_Profile extends StatefulWidget {
  const company_Profile({super.key});

  @override
  State<company_Profile> createState() => _company_ProfileState();
}

class _company_ProfileState extends State<company_Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Company Profile')),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
