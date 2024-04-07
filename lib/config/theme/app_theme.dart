import 'package:flutter/material.dart';

class AppTheme {
  static const seedColor = Colors.deepPurple;
  static ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: seedColor,
      useMaterial3: true,
      listTileTheme: const ListTileThemeData(iconColor: seedColor),
    );
  }
}
