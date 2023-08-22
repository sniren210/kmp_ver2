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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.appSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox
            (
        height: context.appSize.height * 0.8,
              child: PageView.builder(
                itemCount: 3,
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
                        'assets/images/slider/slide_one.png',
                        height: 400.h,
                      ),
                      Padding(
                        padding: EdgeInsets.all(18.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daftar sekarang',
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Kemana kamu pergi hari ini? kami akan siap berkendara dimana saja dan kapan saja',
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
                onPressed: () {},
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
      children: List<Widget>.generate(3, (int index) {
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
