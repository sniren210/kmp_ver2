import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeSettingProvider with ChangeNotifier {
  final SharedPreferences sharedPreferences;
  ThemeModeSettingProvider({
    required this.sharedPreferences

  });

  Future<void> darkMode() {
    return setMode(ThemeMode.dark);
  }

  Future<void> lightMode() {
    return setMode(ThemeMode.light);
  }

  Future<void> system() {
    return setMode(ThemeMode.system);
  }

  ThemeMode get mode {
    final value = sharedPreferences.getInt(AppConstants.prefsConstrants.themeModeSetting);

    return ThemeMode.values[value ?? 0];
  }

  Future<void> setMode(ThemeMode mode) async {
    await sharedPreferences.setInt(AppConstants.prefsConstrants.themeModeSetting, mode.index);
    notifyListeners();
  }
}
