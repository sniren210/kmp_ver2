import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleSettingProvider with ChangeNotifier {
  final String? defaultValue;
  final SharedPreferences sharedPreferences;

  LocaleSettingProvider({
     this.defaultValue,
    required this.sharedPreferences
  });

  String get value =>
      sharedPreferences.getString(AppConstants.prefsConstant.localeSetting) ?? defaultValue ?? 'en';

  Future<void> setValue(String? value) async {
    if (value == null) {
      await sharedPreferences.remove(AppConstants.prefsConstant.localeSetting);
    } else {
      await sharedPreferences.setString(AppConstants.prefsConstant.localeSetting, value);
    }

    notifyListeners();
  }
}
