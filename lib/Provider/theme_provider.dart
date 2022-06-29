import 'package:flutter/material.dart';

/* AÑADIR TEMAS en materialapp
themeMode: ThemeMode.system,
theme: ,
darkTheme: ,
 */

class Temas {
  static final darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(color: Colors.black),
      scaffoldBackgroundColor: Colors.grey.shade900,
      colorScheme: const ColorScheme.dark());
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
}
