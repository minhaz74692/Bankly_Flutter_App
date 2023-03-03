// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:site_galleria/config.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/pages/homepage.dart';
import 'package:site_galleria/pages/intro_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GetOtp extends StatefulWidget {
  const GetOtp({super.key});

  @override
  State<GetOtp> createState() => _GetOtpState();
}

class _GetOtpState extends State<GetOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.white,
          width: 430,
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
                        Navigator.pop(context);
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
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter the OTP to verify your phone Number',
                      style: TextStyle(
                        color: Color.fromARGB(255, 129, 98, 108),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'OTO sent to +880 00000 00000',
                          style: TextStyle(
                            color: Color.fromARGB(255, 129, 98, 108),
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0),
                          ),
                          onPressed: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 129, 98, 108),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  mainAxisAlignment: MainAxisAlignment.start,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    fieldOuterPadding: EdgeInsets.all(5),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 70,
                    fieldWidth: 70,
                    inactiveColor: Color.fromARGB(255, 255, 255, 255),
                    inactiveFillColor: Color.fromARGB(255, 233, 222, 222),
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  // errorAnimationController: errorController,
                  // controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                      child: Text('Resend OTP 34s'),
                      onPressed: () {},
                    ),
                    Container(
                      width: 50,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 224, 213, 213)),
                      child: IconButton(
                        style: IconButton.styleFrom(padding: EdgeInsets.all(0)),
                        color: Colors.white,
                        iconSize: 25,
                        icon: Icon(Feather.chevron_right),
                        onPressed: () {
                          nextScreenCloseOthers(context, MyHomePage());
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
