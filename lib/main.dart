import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InitializeApp.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeSettings = context.read<LocaleSettingProvider>();
    final themeModeSettings = context.read<ThemeModeSettingProvider>();

    return MultiProvider(
      providers: [
        ...InitializeApp.initProvider(),
      ],
      child: MaterialApp(
        title: AppConstants.appName,
        debugShowCheckedModeBanner: false,
        navigatorKey: AppConstants.navigatorKey,
        themeMode: themeModeSettings.mode,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: Locale(localeSettings.value),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routes: routes,
      ),
    );
  }
}
