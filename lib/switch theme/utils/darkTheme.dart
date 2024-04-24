import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff000000),
  brightness: Brightness.light,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      color: Color(0xffa4a2a9),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xff1c1c1e),
    secondary: Color(0xff57cdfb),
    surface: Color(0xffff8975),
  ),
);