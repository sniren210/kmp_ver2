import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
