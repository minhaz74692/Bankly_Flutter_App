// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.all(w < 430 ? w * 0.042 : 20),
            width: double.infinity,
            height: w < 430 ? w * 0.48 : 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(w < 430 ? w * 0.046 : 20),
              ),
              color: Color.fromARGB(255, 182, 211, 204),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order your welcome kit for free',
                  style: TextStyle(
                    fontSize: w < 430 ? w * 0.045 : 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: w < 430 ? w * 0.046 : 20),
                Text(
                  'Welcome kits include',
                  style: TextStyle(
                    fontSize: w < 430 ? w * 0.033 : 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '• Free bankly badge.',
                  style: TextStyle(
                    fontSize: w < 430 ? w * 0.0276 : 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '• Free bankly t-shirts.',
                  style: TextStyle(
                    fontSize: w < 430 ? w * 0.0276 : 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '• More freebies.',
                  style: TextStyle(
                    fontSize: w < 430 ? w * 0.0276 : 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: w < 430 ? w * 0.0335 : 15),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: w < 430 ? w * 0.276 : 120,
                    height: w < 430 ? w * 0.090 : 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 102, 173, 105),
                      borderRadius: BorderRadius.all(
                        Radius.circular(w < 430 ? w * 0.023 : 10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Order now!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w < 430 ? w * 0.0350 : 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: w < 430 ? w * 0.115 : 50,
            left: w < 430 ? w * 0.356 : 155,
            child: Image(
              image: AssetImage('assets/images/order.png'),
              width: w < 430 ? w * 0.40 : 180,
            ))
      ],
    );
  }
}
