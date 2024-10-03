import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: Color.fromARGB(24, 54, 244, 200),
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
  static Color customContrastColor = MaterialColor(0xFF4d5348, _swatchOpacity);

  static Color customPurpleColor = Colors.black;

  static MaterialColor customSwatchColor =
      MaterialColor(0xFF78866b, _swatchOpacity);
}
