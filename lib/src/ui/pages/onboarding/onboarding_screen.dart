import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

  final List<Map<String, dynamic>> _listOnboarding = [
    {
      'title': 'Daftar sekarang!',
      'desc':
          'Kemana kamu pergi hari ini? kami akan siap berkendara dimana saja dan kapan saja',
      'image': AppConstants.imageConstant.slider1
    },
    {
      'title': 'Dapat dilacak',
      'desc': 'Lacak lokasi dan driver paket Anda, secara real-time.',
      'image': AppConstants.imageConstant.slider2
    },
    {
      'title': 'Pengiriman cepat',
      'desc':
          'Anda dapat tetap produktif saat kami mengambil dan mengantar paket Anda, semuanya dalam hitungan jam!',
      'image': AppConstants.imageConstant.slider3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.appSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: context.appSize.height * 0.8,
              child: PageView.builder(
                itemCount: _listOnboarding.length,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "R-Jek",
                        style: context.theme.textTheme.displayLarge,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Image.asset(
                        _listOnboarding[index]['image'],
                        height: 400.h,
                      ),
                      Padding(
                        padding: EdgeInsets.all(18.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _listOnboarding[index]['title'],
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              _listOnboarding[index]['desc'],
                              style: context.theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: _buildDotIndicator(),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: FilledButton(
                onPressed: () => LoginScreen.pushScreen(context),
                child: Text('Get Started'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List<Widget>.generate(_listOnboarding.length, (int index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.0.w),
          width: 8.0.w,
          height: 8.0.h,
          decoration: BoxDecoration(
            color: _currentPage == index ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(4.0),
          ),
        );
      }),
    );
  }
}
