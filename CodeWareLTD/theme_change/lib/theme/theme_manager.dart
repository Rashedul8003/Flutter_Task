//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark) async {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', _themeMode.index);
    notifyListeners();
  }

  // Method to initialize the theme mode from shared_preferences during app startup
  Future<void> loadThemeModeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    int themeModeIndex = prefs.getInt('themeMode') ?? ThemeMode.system.index;
    _themeMode = ThemeMode.values[themeModeIndex];
    notifyListeners();
  }
}
