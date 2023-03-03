// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(top: 40, bottom: 60),
            width: double.infinity,
            height: w < 430 ? w * 0.4405 : 190,
            padding: EdgeInsets.only(
                top: w < 430 ? w * 0.0335 : 15,
                left: w < 430 ? w * 0.0335 : 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(w < 430 ? w * 0.046 : 20),
              ),
              color: Color.fromARGB(255, 199, 188, 154),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bring your card at home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: w < 430 ? w * 0.0395 : 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'only for 299/-',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: w < 430 ? w * 0.057 : 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: w < 430 ? w * 0.115 : 50),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: w < 430 ? w * 0.175 : 85,
                    height: w < 430 ? w * 0.071 : 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(w < 430 ? w * 0.023 : 10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Book now',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w < 430 ? w * 0.0335 : 15,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: w < 430 ? w * 0.23 : 100,
          child: Container(
            margin: EdgeInsets.only(top: w < 430 ? w * 0.175 : 80),
            child: Image(
              image: AssetImage('assets/images/book-cards.png'),
              width: w < 430 ? w * 0.69 : 300,
            ),
          ),
        ),
      ],
    );
  }
}
