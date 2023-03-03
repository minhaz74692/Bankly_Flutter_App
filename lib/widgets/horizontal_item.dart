// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HorizontalItem extends StatelessWidget {
  const HorizontalItem(
      {super.key,
      required this.title,
      required this.img,
      required this.subtitle});
  final String title;
  final String img;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 20, 20, 20),
        borderRadius: BorderRadius.all(
          Radius.circular(w < 430 ? w * 0.0335 : 15),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: w < 430 ? w * 0.0312 : 14,
                fontWeight: FontWeight.w600),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: w < 430 ? w * 0.0175 : 8,
                color: Color.fromARGB(255, 212, 202, 202)),
          ),
          Image(
            image: AssetImage('assets/images/$img.png'),
            height: w < 430 ? w * 0.23 : 100,
          ),
        ],
      ),
    );
  }
}
