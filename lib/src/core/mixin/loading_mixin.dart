import 'package:flutter/material.dart';

mixin LoadingChangeNotifierMixin on ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
