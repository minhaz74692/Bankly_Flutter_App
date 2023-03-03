// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/$title.png'),
          width: w < 430 ? w * .21 : 90,
        ),
        Text(
          title,
          style: TextStyle(fontSize: w < 430 ? 7 : 10),
        ),
      ],
    );
  }
}
