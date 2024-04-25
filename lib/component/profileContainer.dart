import 'package:flutter/material.dart';

class profileContainer extends StatelessWidget {
  final cunug;
  const profileContainer({required this.cunug, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: cunug,
    );
  }
}
