import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class OnboardingProvider extends ChangeNotifier
    with LoadingChangeNotifierMixin {
  final onboardingDataSource = sl<OnboardingDataSource>();
  List<Intro> intros = [];


  Future<void> getData() async {
    setLoading(true);
    final res = await onboardingDataSource.getList();
    setLoading(false);

    intros = res.data.intros;
    notifyListeners();
  }
}
