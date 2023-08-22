import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

ThemeData get darkTheme {
  return ThemeData(
    fontFamily: 'NotoSansJP',
    useMaterial3: true,
    canvasColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorSchemeKmp.colorPrimary,
      brightness: Brightness.dark,
      background: Colors.black,
      surface: Colors.black,
      surfaceTint: Colors.black,
      surfaceVariant: Colors.black,
      primary: ColorSchemeKmp.colorPrimary,
      onPrimary: Colors.white,
      primaryContainer: Colors.black,
      secondary: ColorSchemeKmp.colorSecondary,
      onSecondary: Colors.white,
      tertiary: ColorSchemeKmp.colorTertiary,
      onTertiary: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: ColorSchemeKmp.colorPrimary, width: 2),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color(0xFF141414),
      clipBehavior: Clip.antiAlias,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: ColorSchemeKmp.borderColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorSchemeKmp.colorPrimary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorSchemeKmp.colorPrimary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorSchemeKmp.colorPrimary,
    ),
  );
}
