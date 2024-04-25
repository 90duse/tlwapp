import 'package:faker/faker.dart';
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
        title: Text(
          'Home Page',
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 250),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: ListTile(
              tileColor: Colors.amber,
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentences(5).toString()),
              trailing: Icon(Icons.more_horiz),
              leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 8, 104, 248)),
            ),
          )
        ],
      ),
      drawer: userDrawer(),
    );
  }
}
