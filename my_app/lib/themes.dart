import "package:flutter/material.dart" show ColorScheme, Colors, ThemeData;

mixin MyThemes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static get darkTheme => ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade900,
        primaryColorDark: primaryColor,
        colorScheme: ColorScheme.dark(primary: primary),
        dividerColor: Colors.white,
      );

  static get lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        colorScheme: ColorScheme.light(primary: primary),
        dividerColor: Colors.black,
      );
}
