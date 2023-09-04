import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class MemberTypeProvider extends ChangeNotifier
    with LoadingChangeNotifierMixin {
  final _memberTypeDataSource = sl<MemberTypeDataSource>();
  List<MemberType> memberTypes = [];

  void getData() async {
    setLoading(true);
    final res = await _memberTypeDataSource.getList();
    setLoading(false);

    memberTypes = res.data.memberTypes;
    notifyListeners();
  }
}
