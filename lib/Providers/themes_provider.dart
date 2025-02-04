import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Themes/dark_themes.dart';
import '../Themes/light_themes.dart';

class ThemeProvider with ChangeNotifier {
  static const String _themeKey = 'theme_key';
  ThemeMode _themeMode = ThemeMode.system;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;

  ThemeData Function(BuildContext context) get themeData {
    return _themeMode == ThemeMode.light ? lightTheme : darkTheme;
  }

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveTheme();
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString(_themeKey);
    if (theme == 'dark') {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  Future<void> _saveTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_themeKey, _themeMode == ThemeMode.dark ? 'dark' : 'light');
  }
}
