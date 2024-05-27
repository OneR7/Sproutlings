import 'package:flutter/material.dart';

class AppColors {
  static const darkRED = Color.fromARGB(255, 157, 0, 0);
  static const darkGrey = Color(0XFF635C5C);
  static const white = Color.fromARGB(255, 255, 255, 255);
}

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'Outfit',
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: AppColors.darkGrey,
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'Outfit',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: AppColors.darkGrey,
  );

  static TextStyle light = const TextStyle(
      fontFamily: 'Thin',
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: Color.fromARGB(255, 194, 194, 194));
}
