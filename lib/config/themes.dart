import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.dark(),
        buttonColor: Colors.blue,
        splashColor: Colors.black),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.yellow,
    primaryColor: Colors.yellow[300],
    accentColor: Colors.yellow[300],
    disabledColor: Colors.grey,
    cardColor: Colors.transparent,
    canvasColor: Colors.grey[800],
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
        buttonColor: Colors.blue,
        splashColor: Colors.white),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
