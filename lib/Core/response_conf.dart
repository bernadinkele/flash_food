import 'package:flutter/material.dart'
    show BuildContext, MediaQuery, MediaQueryData, Orientation;

class MathUtils {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getHeight(double inputHeight) {
  double screenHeight = MathUtils.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getWidth(double inputWidth) {
  double screenWidth = MathUtils.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}

double getFontSize(double px) {
  var height = getHeight(px);
  var width = getWidth(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}
double getSize(double px) {
  var height = getHeight(px);
  var width = getWidth(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}
