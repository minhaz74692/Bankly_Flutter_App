// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:site_galleria/card.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/widgets/after_card.dart';
import 'package:site_galleria/widgets/icon_build.dart';

import 'package:site_galleria/widgets/roteted_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final textColor = TextStyle(
        color: Colors.white,
        fontSize: w < 430 ? w * 0.0465 : 20,
        fontFamily: 'NotoSans');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          color: Color.fromARGB(255, 34, 31, 31),
          width: w < 430 ? w : 430,
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: textColor,
                          ),
                          Text('John Dahmer', style: textColor),
                        ]),
                    Container(
                      width: w < 430 ? w * 0.139 : 60,
                      height: w < 430 ? w * 0.139 : 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      child: IconButton(
                        iconSize: w < 430 ? w * 0.069 : 30,
                        highlightColor: Colors.white,
                        color: Color.fromARGB(255, 134, 128, 127),
                        icon: Icon(Feather.bell),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w < 430 ? w * 0.0335 : 15,
                          fontFamily: 'NotoSans'),
                    ),
                    Text(
                      "\u{09F3}234,300.32",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w < 430 ? w * 0.069 : 30,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'NotoSans'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconBuild(text: 'Pay  >'),
                        SizedBox(
                          width: 20,
                        ),
                        IconBuild(text: 'Add  +'),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Color.fromARGB(255, 124, 124, 120),
                indent: 60,
                endIndent: 60,
              ),
              Stack(
                children: [
                  Positioned(
                    child: RotatedCard(),
                  ),
                  Positioned(
                    child: AfterCard(),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 100),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35),
                            ),
                            color: Color.fromARGB(255, 51, 38, 38)),
                        width: w < 430 ? w * .16279 : 70,
                        height: w < 430 ? w * .16279 : 70,
                        child: IconButton(
                          color: Colors.white,
                          iconSize: w < 430 ? w * .10465 : 45,
                          icon: Icon(Feather.chevron_down),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
