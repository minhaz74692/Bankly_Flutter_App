// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:site_galleria/card.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/widgets/book_now.dart';
import 'package:site_galleria/widgets/button_container.dart';
import 'package:site_galleria/widgets/explore_iterm.dart';
import 'package:site_galleria/widgets/horizontal_item.dart';
import 'package:site_galleria/widgets/ordercard.dart';
import 'package:site_galleria/widgets/title.dart';

class AfterCard extends StatelessWidget {
  const AfterCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 125),
      padding: EdgeInsets.only(
          top: w < 430 ? w * .1395 : 60,
          left: w < 430 ? w * 0.05 : 30,
          right: w < 430 ? w * 0.05 : 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(w < 430 ? w * .093 : 40),
          topRight: Radius.circular(w < 430 ? w * .093 : 40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonContainer(
                text: 'Request',
                isWhite: true,
              ),
              SizedBox(width: 10),
              ButtonContainer(
                text: 'History',
                isWhite: false,
              ),
            ],
          ),
          SizedBox(height: 20),
          TitleHead(title: 'Your rewards'),
          Stack(
            children: [
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: w < 430 ? w * 0.069 : 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 59, 51, 78),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(w < 430 ? w * 0.046 : 20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(w < 430 ? w * 0.046 : 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entertainment',
                          style: TextStyle(
                              fontSize: w < 430 ? w * 0.0418 : 18,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '2334 points',
                          style: TextStyle(
                            fontSize: w < 430 ? w * 0.069 : 30,
                            color: Color.fromARGB(255, 86, 66, 197),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: w < 430 ? w * 0.42 : 190,
                child: Image(
                  image: AssetImage('assets/images/stars.png'),
                  width: w < 430 ? w * 0.48 : 220,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TitleHead(title: 'Explore categories'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreItem(title: 'Food'),
                      ExploreItem(title: 'Travel'),
                      ExploreItem(title: 'Shopping'),
                      ExploreItem(title: 'Education'),
                    ],
                  ),
                  Row(
                    children: [
                      ExploreItem(title: 'Entertainment'),
                      ExploreItem(title: 'Personal Care'),
                      ExploreItem(title: 'Transportation'),
                      ExploreItem(title: 'Miscellaneous'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          TitleHead(title: 'Hey John, you might like this'),
          SizedBox(height: 20),
          OrderCard(),
          SizedBox(height: 30),
          TitleHead(title: 'Use bankly and get'),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HorizontalItem(
                    title: '20% off', img: 'playstore', subtitle: ''),
                SizedBox(width: 15),
                HorizontalItem(
                    title: '5% off', img: 'cards', subtitle: 'On bankly card'),
                SizedBox(width: 15),
                HorizontalItem(
                    title: '10% off', img: 'off', subtitle: 'On foods'),
                SizedBox(width: 15),
                HorizontalItem(
                    title: '500Rs cashback',
                    img: 'cashback',
                    subtitle: 'On ticket bookings'),
              ],
            ),
          ),
          BookNow(),
          SizedBox(height: w < 430 ? w * 0.069 : 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 150, 202, 152),
            ),
            onPressed: () {
              nextScreen(context, CardDetails());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Card Details',
                    style: TextStyle(fontSize: w < 430 ? w * 0.046 : 20),
                  ),
                  Icon(
                    Feather.arrow_right,
                    size: w < 430 ? w * 0.046 : 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
