import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screennHeight;
  static double? blocksizeHorizontal;
  static double? blockSizevertical;
  
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screennHeight = _mediaQueryData!.size.height;
    blockSizevertical = screennHeight! / 100;
    blocksizeHorizontal = screenWidth! / 100;
  }
}
