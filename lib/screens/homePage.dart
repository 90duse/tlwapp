import 'package:flutter/material.dart';
import 'package:tlwapp/component/drawer.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text(
          'Home Page',
          //style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: userDrawer(),
    );
  }
}
