import 'package:flutter/material.dart';

class SizeConfig {

  // static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight= 0;
  static double defaultSize= 0;
  static Orientation orientation = Orientation.portrait;

  static double get defaultPadding => defaultSize * 1.5;

  void init(BoxConstraints constraints, Orientation orientation) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;
    //Apple iPhone 11 viewport size is 414 x 896 (px)
    //With iPhone 11, i set defaultSize = 10;
    //So if the screen increase or decrease then our defaultSize also vary
    if (orientation == Orientation.portrait) {
      defaultSize = screenHeight * 10 / 896;
    } else {
      defaultSize = screenHeight * 10 / 414;
    }
  }

  ///Singleton factory
  static final SizeConfig _instance = SizeConfig._internal();

  factory SizeConfig() {
    return _instance;
  }

  SizeConfig._internal();

  // static void init(BuildContext context) {
  //   _mediaQueryData = MediaQuery.of(context);
  //   screenHeight = _mediaQueryData.size.height;
  //   screenWidth = _mediaQueryData.size.width;
  //   orientation = _mediaQueryData.orientation;
  // }
}

double getProportionateScreenHeight(double inputHeight) {

  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;

}

double getProportionateScreenWidth(double inputWidth) {

  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;

}