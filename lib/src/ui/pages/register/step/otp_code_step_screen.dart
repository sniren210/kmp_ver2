import 'dart:async';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:pinput/pinput.dart';

class OtpCodeStepScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpCodeStepScreen({super.key, required this.phoneNumber});

  @override
  State<OtpCodeStepScreen> createState() => _OtpCodeStepScreenState();
}

class _OtpCodeStepScreenState extends State<OtpCodeStepScreen> {
  final _otpController = TextEditingController();

  int _number = 60;
  late Timer timer;

  @override
  void initState() {
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
    final repo = context.watch<RegisterProvider>();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                AppConstants.imageConstant.logo,
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
              Text(widget.phoneNumber),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Pinput(
                  controller: _otpController,
                  length: 6,
                ),
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              GestureDetector(
                onTap: () {},
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
              onPressed: () async {
                // print(widget.phoneNumber);
                // return;
                if (_otpController.text.length == 6) {
                  final res = await repo.verifyPhoneNumber(
                      phoneNumber: widget.phoneNumber,
                      code: _otpController.text);

                  if (res.success) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScanKTPCameraStepScreen(),
                        ));
                  } else {
                    SnackBarUtils.show(context,
                        title: 'Failed',
                        message: res.data.message,
                        contentType: ContentType.failure);
                  }
                }
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
