import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeStepScreen extends StatefulWidget {
  const OtpCodeStepScreen({super.key});

  @override
  State<OtpCodeStepScreen> createState() => _OtpCodeStepScreenState();
}

class _OtpCodeStepScreenState extends State<OtpCodeStepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorSchemeKmp.colorPrimary,
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            ImageConstant.logo,
            width: 150.w,
          ),
          Text('Kami mengirimkan kode melalui\nWhatsApp ke nomor'),
          SizedBox(
            height: 12.h,
          ),
          Text('083452342342'),
          SizedBox(
            height: 24.h,
          ),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {},
            beforeTextPaste: (text) {
              return true;
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          GestureDetector(
            onTap: (){},
            child: Text('Saya tidak menerima Kode '),
          ),
          SizedBox(
            height: 12.h,
          ),
          RichText(
            text: TextSpan(
              text: 'MInta lagi dalam',
              children: [
                TextSpan(
                    text: '01:00',
                    style: TextStyle(
                      color: ColorSchemeKmp.colorPrimary,
                    )),
                TextSpan(
                  text: 'detik',
                ),
              ],
            ),
          ),
          Text('Minta lagi dalam'),
        ],
      ),
    );
  }
}
