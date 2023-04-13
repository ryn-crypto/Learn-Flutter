import 'package:flutter/material.dart';

const appPurple = Color(0xFF431AA1);
const appPurpleLight1 = Color(0xFF9345F2);
const appPurpleLight2 = Color(0xFFB9A2D8);
const appPurpleDark = Color(0xFF1E0771);
const appWhite = Color(0xFFFAF8FC);
const appOrange = Color(0xFFE6704A);

// light mode
ThemeData appLight = ThemeData(
  primaryColor: appPurple,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: appPurple,
  ),
);

// dark mode
ThemeData appDark = ThemeData(
  primaryColor: appPurpleLight2,
  scaffoldBackgroundColor: appPurpleDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: appPurpleDark,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: appWhite,
    ),
    bodyText2: TextStyle(
      color: appWhite,
    ),
  ),
);
