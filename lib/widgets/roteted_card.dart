// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RotatedCard extends StatelessWidget {
  const RotatedCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(-45 / 180 * 3.1416),
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        alignment: Alignment.center,
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: 200,
          child: Container(
            height: w < 430 ? w * .5 : 230,
            width: w < 430 ? w * .9 : 360,
            margin: EdgeInsets.all(w < 430 ? w * 0.046 : 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 159, 159, 172),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '\u{09F3}********',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        width: 25,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '****  ****  **** 2489',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w < 430 ? w * .0558 : 24,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('**** ****'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
