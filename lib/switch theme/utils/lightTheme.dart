import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xfff8f8f8),
  brightness: Brightness.light,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      color: Color(0xffa4a2a9),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xffffffff),
    secondary: Color(0xff2273b9),
    surface: Color(0xffff5537),
  ),
);