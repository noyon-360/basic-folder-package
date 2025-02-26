import 'package:my_basic_package/core/secure_key_content/secure_key.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static const String _themeKey = SecureKey.themeKey;

  // Save theme mode to shared preferences
  static Future<void> saveThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    switch (themeMode) {
      case ThemeMode.light:
        prefs.setString(_themeKey, 'light');
        break;
      case ThemeMode.dark:
        prefs.setString(_themeKey, 'dark');
        break;
      case ThemeMode.system:
        prefs.setString(_themeKey, 'system');
        break;
    }
  }

  // Load theme mode from shared preferences
  static Future<ThemeMode> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString(_themeKey) ?? 'system'; // Default to system if no value exists
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }
}