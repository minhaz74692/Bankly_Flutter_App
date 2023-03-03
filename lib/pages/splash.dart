// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:site_galleria/config.dart';
import 'package:site_galleria/next_screen.dart';
import 'package:site_galleria/pages/homepage.dart';
import 'package:site_galleria/pages/intro_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  afterSplash() {
    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      nextScreen(context, IntroPage());
    });
  }

  // gotoHomePage () {
  //   final SignInBloc sb = context.read<SignInBloc>();
  //   if(sb.isSignedIn == true){
  //     sb.getDataFromSp();
  //   }
  //   nextScreenReplace(context, HomePage());
  // }

  // gotoSignInPage (){
  //   nextScreenReplace(context, WelcomePage());
  // }

  @override
  void initState() {
    afterSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.white,
            width: 430,
            child: Center(
                widthFactor: 430,
                child: Image(
                  image: AssetImage(Config().appLogo),
                  width: 220,
                  fit: BoxFit.contain,
                )),
          ),
        ));
  }
}
