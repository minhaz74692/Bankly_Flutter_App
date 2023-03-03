// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TitleHead extends StatelessWidget {
  const TitleHead({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 110, 121, 143),
            fontFamily: 'NotoSans',
            fontSize: w < 430 ? w * 0.046 : 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
