import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

ThemeData get lightTheme {
  return ThemeData(
    fontFamily: 'NotoSansJP',
    useMaterial3: true,
    canvasColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorSchemeKmp.colorPrimary,
      brightness: Brightness.light,
      background: Colors.white,
      surface: Colors.white,
      surfaceTint: Colors.white,
      primary: ColorSchemeKmp.colorPrimary,
      onPrimary: Colors.white,
      secondary: ColorSchemeKmp.colorSecondary,
      onSecondary: Colors.white,
      tertiary: ColorSchemeKmp.colorTertiary,
      onTertiary: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: ColorSchemeKmp.colorPrimary, width: 2),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 233, 232, 232),
      elevation: 10,
      clipBehavior: Clip.antiAlias,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorSchemeKmp.colorPrimary,
      selectedItemColor: ColorSchemeKmp.colorPrimary,
      selectedIconTheme: IconThemeData(
        color: ColorSchemeKmp.colorPrimary,
      ),
      unselectedLabelStyle: TextStyle(color: Colors.grey.shade400),
      unselectedItemColor: Colors.grey.shade400,
      unselectedIconTheme: IconThemeData(
        color: Colors.grey.shade400,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorSchemeKmp.colorPrimary,
      ),
    ),
  );
}
