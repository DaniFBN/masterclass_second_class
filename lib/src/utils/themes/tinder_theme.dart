import 'package:flutter/material.dart';

final _textColor = Colors.white.withOpacity(0.8);

ThemeData tinderTheme() {
  // ###
  // # Text Theme
  // ###
  const textTheme = TextTheme(
    button: TextStyle(
      letterSpacing: 0.5,
    ),
  );

  // ###
  // # Button Themes
  // ###
  final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: _textColor,
      textStyle: textTheme.button,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  );

  // ###
  // # Theme Data
  // ###

  return ThemeData(
    brightness: Brightness.dark,
    hintColor: _textColor,
    textButtonTheme: textButtonTheme,
  );
}
