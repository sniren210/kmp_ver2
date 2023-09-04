import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SplashscreenReadyMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppConstants.imageConstant.logoWithName,
                    height: 250.0, fit: BoxFit.scaleDown, width: 250.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Future<void> initializeInSplash() async {

    final SharedPreferences sharedPreferences = sl<SharedPreferences>();

    final userToken =
        sharedPreferences.getString(AppConstants.prefsConstant.token);

    await Future.delayed(const Duration(seconds: 2));
    // await context.read<OnboardingProvider>().getData();

    if (userToken?.isNotEmpty ?? false) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    }
  }
}
