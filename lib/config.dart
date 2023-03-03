import 'package:flutter/cupertino.dart';

class Config {
  final String introImage1 = 'assets/images/intro1.png';
  final String introImage2 = 'assets/images/intro2.png';
  final String introImage3 = 'assets/images/intro3.png';
  final String appLogo = 'assets/images/applogo.png';

  widthHandle(w, x) {
    return w < 430 ? w * x / 430 : x;
  }
}
