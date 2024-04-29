import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  bool getThemeMode() => _isDark;

  toggleThemeMode(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
