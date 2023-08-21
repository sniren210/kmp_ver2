import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension SizedContext on BuildContext {
  Size get appSize => MediaQuery.of(this).size;
}
