import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_theme_manager/src/theme_data.dart'; // Updated package name

class ThemeManager extends ChangeNotifier {
  ThemeData _currentTheme;
  bool _isDarkMode;

  ThemeManager({bool isDarkMode = false})
      : _isDarkMode = isDarkMode,
        _currentTheme = isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme;

  ThemeData get themeData => _currentTheme;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    _currentTheme = _isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme;
    notifyListeners();
    _saveThemeToPrefs();
  }

  Future<void> _saveThemeToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  Future<void> loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    _currentTheme = _isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme;
    notifyListeners();
  }
}
