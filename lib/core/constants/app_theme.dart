import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Montserrat',
  useMaterial3: true,
).copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red));

final ThemeData themeDataDark = ThemeData(
  brightness: Brightness.dark,
);
