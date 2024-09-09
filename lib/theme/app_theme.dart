import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class Themes {
  static ThemeData lightModeTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
        color: whiteColor, surfaceTintColor: whiteColor),
    scaffoldBackgroundColor: whiteColor,
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(red))),
  );

  static ThemeData darkModeTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: black, surfaceTintColor: black),
      scaffoldBackgroundColor:  Colors.black,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(red))));
}