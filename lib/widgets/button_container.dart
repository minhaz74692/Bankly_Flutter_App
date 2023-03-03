// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key, required this.text, required this.isWhite});
  final String text;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 139, 184, 169)),
        borderRadius: BorderRadius.all(
          Radius.circular(
            w < 430 ? w * .0348 : 15,
          ),
        ),
        color: isWhite ? Colors.white : Color.fromARGB(255, 139, 184, 169),
      ),
      height: w < 430 ? w * .116 : 50,
      width: w < 430 ? w * .372 : 160,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isWhite ? Color.fromARGB(255, 139, 184, 169) : Colors.white,
            fontSize: w < 430 ? w * 0.0418 : 18,
          ),
        ),
      ),
    );
  }
}
