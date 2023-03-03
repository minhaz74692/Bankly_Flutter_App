// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:site_galleria/config.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/pages/get_otp.dart';
import 'package:site_galleria/pages/homepage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:site_galleria/pages/register_page.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void afterIntroComplete() {
    nextScreenReplace(context, MobileRegister());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: 430,
          color: Colors.white,
          child: IntroductionScreen(
            pages: [
              introPage(
                  context,
                  'Track your budget',
                  'The budget feature allows teens to track their spending, set savings goals, and reieve educational resoures to help them understanding important financial concepts.',
                  Config().introImage1),
              introPage(
                  context,
                  'Set your savings goal',
                  'This feature lets the teens to set savings goals and track their progress towards achieving them.',
                  Config().introImage2),
              introPage(
                  context,
                  'Get amazing rewards',
                  'The rewards feature is designed to incentivize and encorage good savings habits among teens.',
                  Config().introImage3)
            ],
            onDone: () {
              afterIntroComplete();
            },
            onSkip: () {
              afterIntroComplete();
            },
            globalBackgroundColor: Colors.white,
            showSkipButton: true,
            skip: const Text('skip',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
            next: const Icon(Icons.navigate_next),
            done: const Text("done",
                style: TextStyle(fontWeight: FontWeight.w600)),
            dotsDecorator: DotsDecorator(
                size: const Size.square(7.0),
                activeSize: const Size(20.0, 5.0),
                activeColor: Theme.of(context).primaryColor,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ),
      ),
    );
  }
}

PageViewModel introPage(context, String title, String subtitle, String image) {
  return PageViewModel(
    titleWidget: Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.7,
              wordSpacing: 1,
              color: Colors.black),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 3,
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
        )
      ],
    ),
    body: subtitle,
    image: Center(
        child: Image(
      image: AssetImage(image),
    )),
    decoration: const PageDecoration(
      pageColor: Colors.white,
      bodyTextStyle: TextStyle(
          color: Colors.black54, fontSize: 17, fontWeight: FontWeight.w500),
      bodyPadding: EdgeInsets.only(left: 30, right: 30),
      //descriptionPadding: EdgeInsets.only(left: 30, right: 30),
      imagePadding: EdgeInsets.all(30),
    ),
  );
}
