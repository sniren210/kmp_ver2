import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:provider/provider.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await InitializeApp.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: ColorSchemeKmp.colorPrimary, 
  ));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...InitializeApp.initProvider(),
      ],
      builder: (context, child) {
        final localeSettings = context.read<LocaleSettingProvider>();
        final themeModeSettings = context.read<ThemeModeSettingProvider>();

        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: false,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              title: AppConstants.appName,
              debugShowCheckedModeBanner: false,
              navigatorKey: AppConstants.navigatorKey,
              themeMode: ThemeMode.light,
              theme: lightTheme,
              darkTheme: darkTheme,
              locale: Locale(localeSettings.value),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routes: routes,
            );
          },
        );
      },
    );
  }
}
