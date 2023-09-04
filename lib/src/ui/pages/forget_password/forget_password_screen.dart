import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();

  static pushScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        ));
  }
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 360.h,
            child: Stack(
              children: [
                Container(
                  color: ColorSchemeKmp.colorPrimary,
                  height: 300.h,
                  child: Image.asset(
                    'assets/images/app/loginvector.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SafeArea(
                    child: BackButton(
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Masukan email anda...",
                            filled: true,
                            fillColor: Colors.grey.shade200,
                          ),
                        ),
                        SizedBox(
                          height: context.dimensions.marginSizeDefault,
                        ),
                        FilledButton(
                          onPressed: () => {},
                          child: Text('Confirm'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
