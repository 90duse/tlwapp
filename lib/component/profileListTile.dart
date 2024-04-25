import 'package:flutter/material.dart';

class profileListTile extends StatelessWidget {
  final labalhint;
  final textname;
  final IconData editIcon;
  const profileListTile(
      {required this.editIcon,
      required this.labalhint,
      required this.textname,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color.fromARGB(255, 255, 255, 255),
      title: Text(
        labalhint,
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
      subtitle: Text(
        textname,
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
      trailing: Icon(editIcon),
    );
  }
}
