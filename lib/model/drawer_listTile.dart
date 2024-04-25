import 'package:flutter/material.dart';

class drawerList_tile extends StatelessWidget {
  final IconData icon;

  final TextButton botton;

  const drawerList_tile({required this.icon, required this.botton, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 30,
        ),
        title: botton);
  }
}
