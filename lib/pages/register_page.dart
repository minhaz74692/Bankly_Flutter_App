// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:site_galleria/config.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/pages/get_otp.dart';
import 'package:site_galleria/pages/intro_page.dart';

class MobileRegister extends StatefulWidget {
  const MobileRegister({super.key});

  @override
  State<MobileRegister> createState() => _MobileRegisterState();
}

class _MobileRegisterState extends State<MobileRegister> {
  var phoneCtrl = TextEditingController();

  late String phone;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.white,
          width: w < 430 ? w : 430,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 198, 198)),
                        color: Colors.white),
                    child: IconButton(
                      color: Color.fromARGB(255, 218, 198, 198),
                      iconSize: 30,
                      icon: Icon(Feather.chevron_left),
                      onPressed: () {
                        nextScreenCloseOthers(context, IntroPage());
                      },
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage(Config().appLogo),
                width: 200,
                height: 100,
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your phone number',
                      style: TextStyle(
                        color: Color.fromARGB(255, 129, 98, 108),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Made sure to provide your won number',
                      style: TextStyle(
                        color: Color.fromARGB(255, 129, 98, 108),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 238, 238),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 24),
                        controller: phoneCtrl,
                        decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: '+880 00000 00000',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 155, 145, 144),
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'By continuing you agree to our',
                          style: TextStyle(
                              color: Color.fromARGB(255, 156, 174, 218)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms of use',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          'and',
                          style: TextStyle(
                            color: Color.fromARGB(255, 156, 174, 218),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Privacy policy',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 218, 153),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {
                    nextScreen(context, GetOtp());
                  },
                  child: Text(
                    'Get OTP  >',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
