import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinSetUserStepScreen extends StatefulWidget {
  const PinSetUserStepScreen({super.key});

  @override
  State<PinSetUserStepScreen> createState() => _PinSetUserStepScreenState();
}

class _PinSetUserStepScreenState extends State<PinSetUserStepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                  child: Text(
                "Buat PIN AKUN MU",
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Center(
                  child: Text(
                "Pin digunakan untuk setiap transaksi yang terjadi di aplikasi",
                textAlign: TextAlign.center,
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: PinCodeTextField(
                blinkWhenObscuring: true,
                obscuringCharacter: "*",
                length: 6,
                appContext: context,
                obscureText: true,
                showCursor: true,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 63,
                  fieldWidth: 48,
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(10),
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onChanged: (val) {},
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
            FilledButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Simpan pin',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: Colors.white, letterSpacing: 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
