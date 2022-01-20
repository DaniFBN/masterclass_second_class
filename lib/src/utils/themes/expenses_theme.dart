import 'package:flutter/material.dart';

const _backgroundColor = Color(0xff000000);
const _primaryColor = Color(0xFF5E5CE5);

ThemeData expensesTheme() {
  // ###
  // # Text Theme
  // ###
  const textTheme = TextTheme(
    headline6: TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: Colors.white54,
      fontSize: 24,
    ),
  );

  // ###
  // # Button Themes
  // ###
  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: _primaryColor,
      textStyle: textTheme.caption,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );

  // ###
  // # Theme Data
  // ###

  return ThemeData(
    brightness: Brightness.dark,
    textTheme: textTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    primaryColor: _primaryColor,
    backgroundColor: _backgroundColor,
    scaffoldBackgroundColor: _backgroundColor,
  );
}
