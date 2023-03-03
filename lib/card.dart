// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:site_galleria/config.dart';
import 'package:site_galleria/pages/homepage.dart';
import 'package:site_galleria/next_screen.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool offsecuretext = false;
  Icon lockEye = Icon(Feather.eye);

  void lockPressed() {
    if (offsecuretext == true) {
      setState(() {
        offsecuretext = false;
        lockEye = Icon(Feather.eye);
      });
    } else {
      setState(() {
        offsecuretext = true;
        lockEye = Icon(Feather.eye_off);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    TextStyle cardHolder = TextStyle(
      color: Color.fromARGB(255, 228, 219, 219),
      fontSize: Config().widthHandle(w, 10),
    );
    TextStyle expiryText = TextStyle(
      color: Colors.white,
      fontSize: Config().widthHandle(w, 20),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 430,
          color: Color.fromARGB(255, 34, 31, 31),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Config().widthHandle(w, 14),
                      vertical: Config().widthHandle(w, 30),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(Config().widthHandle(w, 30)),
                        ),
                        border: Border.all(color: Colors.white),
                        color: Color.fromARGB(255, 51, 38, 38)),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: Config().widthHandle(w, 40),
                      icon: Icon(Feather.chevron_left),
                      onPressed: () {
                        nextScreenCloseOthers(context, MyHomePage());
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: Config().widthHandle(w, 240),
                width: double.infinity,
                margin: EdgeInsets.all(
                  Config().widthHandle(w, 20),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 159, 172),
                  borderRadius: BorderRadius.circular(w < 430 ? w * 0.046 : 20),
                ),

                // Card
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Config().widthHandle(w, 20),
                    bottom: Config().widthHandle(w, 30),
                    left: Config().widthHandle(w, 20),
                    right: Config().widthHandle(w, 20),
                  ),
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
                                  color: Color.fromARGB(255, 228, 219, 219),
                                  fontSize: Config().widthHandle(w, 12),
                                ),
                              ),
                              Text(
                                '\u{09F3}232,300.32',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Config().widthHandle(w, 18),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/images/logo.png'),
                            width: Config().widthHandle(w, 25),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            offsecuretext
                                ? '4737  9618  4974 2489'
                                : '****  ****  **** 2489',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Config().widthHandle(w, 26),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              lockPressed();
                            },
                            icon: lockEye,
                            iconSize: Config().widthHandle(w, 26),
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card holder name',
                                style: cardHolder,
                              ),
                              Text(
                                'John Dahmer',
                                style: expiryText,
                              ),
                            ],
                          ),
                          SizedBox(width: Config().widthHandle(w, 60)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expiry Date',
                                style: cardHolder,
                              ),
                              Text(
                                '02/30',
                                style: expiryText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // after Card
              SizedBox(height: Config().widthHandle(w, 50)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config().widthHandle(w, 20), vertical: 0),
                child: Column(
                  children: [
                    AfterCardText(title: 'How to use my card?'),
                    AfterCardText(title: 'Order?'),
                    AfterCardText(title: 'Transactions'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have a card?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Config().widthHandle(w, 14),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Activate',
                      style: TextStyle(
                        fontSize: Config().widthHandle(w, 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Config().widthHandle(w, 80),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AfterCardText extends StatelessWidget {
  const AfterCardText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: Config().widthHandle(w, 20)),
      width: double.infinity,
      height: Config().widthHandle(w, 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Config().widthHandle(w, 10),
          ),
        ),
        color: Color.fromARGB(255, 63, 52, 52),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: Config().widthHandle(w, 24),
          ),
        ),
      ),
    );
  }
}
