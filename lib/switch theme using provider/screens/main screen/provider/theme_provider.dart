import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  bool getThemeMode() => _isDark;

  Future<void> toggleThemePreference(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isDark', value);
    _isDark = value;
    notifyListeners();
  }

  Future<void> getThemePreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getKeys().contains('isDark')) {
      _isDark = preferences.getBool('isDark')!;
    } else {
      preferences.setBool('isDark', false);
      _isDark = false;
    }
    notifyListeners();
  }

  ThemeProvider() {
    getThemePreference();
  }
}
