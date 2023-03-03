// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconBuild extends StatelessWidget {
  IconBuild({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(w < 430 ? w * 0.023 : 10),
          ),
          color: Color.fromARGB(255, 82, 80, 76)),
      width: w < 430 ? w * .184 : 80,
      height: w < 430 ? w * 0.0805 : 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: w < 430 ? w * 0.0335 : 15,
              fontFamily: 'NotoSans',
            ),
          ),
        ],
      ),
    );
  }
}
