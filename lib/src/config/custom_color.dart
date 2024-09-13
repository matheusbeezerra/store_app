import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(244, 67, 54, .1),
  100: const Color.fromRGBO(244, 67, 54, .2),
  200: const Color.fromRGBO(244, 67, 54, .3),
  300: const Color.fromRGBO(244, 67, 54, .4),
  400: const Color.fromRGBO(244, 67, 54, .5),
  500: const Color.fromRGBO(244, 67, 54, .6),
  600: const Color.fromRGBO(244, 67, 54, .7),
  700: const Color.fromRGBO(244, 67, 54, .8),
  800: const Color.fromRGBO(244, 67, 54, .9),
  900: const Color.fromRGBO(244, 67, 54, .1),
};

abstract class CustomColor {
  static Color customContrastColor = Colors.red.shade700;

  static Color customPurpleColor = Colors.purple.shade700;

  static MaterialColor customSwatchColor =
      MaterialColor(0xFFF44336, _swatchOpacity);
}
