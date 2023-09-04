import 'package:flutter/material.dart';

class AppConstants {
  // App info
  static const String appName = 'KMP Togo';
  static const String appVersion = '1.0';
  static const String hostUrl = 'https://rjek-api.kmptogo.com';
  static const String baseUrl = '$hostUrl/api/v1';

  // Constant Share prefs
  static PrefsConstants prefsConstant = PrefsConstants();

  static ApiConstant apiConstant = ApiConstant();

  static ImageConstant imageConstant = ImageConstant();

  static final navigatorKey = GlobalKey<NavigatorState>();
}

class PrefsConstants {
  String token = 'token';
  String localeSetting = 'locale_setting';
  String themeModeSetting = 'theme_mode_setting';
}

class ApiConstant {
  String register = '/auth/register';
  String getOtp = '/auth/get-otp';
  String verifyOtp = '/auth/verify-otp';
  String checkKtp = '/auth/cek-ktp';
  String login = '/auth/login';

  String setMember = '/customer/set-member';

  String onboarding = '/intro';
  String memberList = '/customer/member_type';
}

class ImageConstant{
   String logoWithName = 'assets/images/app/logo_with_name.png';
   String logo = 'assets/images/app/logo.png';
   String bank = 'assets/images/app/bank.png';
   String slider1 = 'assets/images/slider/slide_one.png';
   String slider2 = 'assets/images/slider/slide_two.png';
   String slider3 = 'assets/images/slider/slide_three.png';
}
