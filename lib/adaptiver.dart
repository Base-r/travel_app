import 'package:flutter/material.dart';

class Adaptiver {
  static const int _designWidth = 393;
  static const int _designHeight = 852;

  static double _cachedWidth = 0;
  static double _cachedWidthCoefficient = 0;
  static double getAdaptiveWidth(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width != _cachedWidth) {
      _cachedWidth = width;
      _cachedWidthCoefficient = width / _designWidth;
    }
    return _cachedWidthCoefficient;
  }

  static double _cachedHeight = 0;
  static double _cachedHeightCoefficient = 0;
  static double getAdaptiveHeight(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    if (height != _cachedHeight) {
      _cachedHeight = height;
      _cachedHeightCoefficient = height / _designHeight;
    }
    return _cachedHeightCoefficient;
  }
}
