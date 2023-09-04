import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier with LoadingChangeNotifierMixin {
  final AuthDataSource _authDataSource = sl<AuthDataSource>();
  final SharedPreferences _sharedPreferences = sl<SharedPreferences>();

  Future<AuthModel> login(
      {required String email, required String password}) async {
    setLoading(true);
    final res = await _authDataSource.login(email: email, password: password);
    setLoading(false);

    if (res.success) {
      _sharedPreferences.setString(
          AppConstants.prefsConstant.token, res.data.token);
    }

    return res;
  }
}
