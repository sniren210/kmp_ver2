import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:pinput/pinput.dart';

class OtpCodeStepScreen extends StatefulWidget {
  const OtpCodeStepScreen({super.key});

  @override
  State<OtpCodeStepScreen> createState() => _OtpCodeStepScreenState();
}

class _OtpCodeStepScreenState extends State<OtpCodeStepScreen> {
  final _otpController = TextEditingController();

  int _number = 60;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (time) {
      if (_number != 0) {
        setState(() {
          _number -= 1;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                ImageConstant.logo,
                width: 150.w,
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              Text(
                'Kami mengirimkan kode melalui\nWhatsApp ke nomor',
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge,
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              Text('083452342342'),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    controller: _otpController,
                    length: 6,
                  ),
                ],
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmationKTPStepScreen(),
                      ));
                },
                child: Text('Saya tidak menerima Kode '),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              RichText(
                text: TextSpan(
                  text: 'Minta lagi dalam',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: ' ${_number} ',
                      style: TextStyle(
                        color: ColorSchemeKmp.colorPrimary,
                      ),
                    ),
                    TextSpan(
                      text: ' detik ',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScanKTPCameraStepScreen(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Confirm',
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: Colors.white, letterSpacing: 3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
