import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:pinput/pinput.dart';

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
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              Image.asset(
                AppConstants.imageConstant.logo,
                width: 150.w,
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                    child: Text(
                  "Buat PIN AKUN MU",
                  style: context.textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Center(
                    child: Text(
                  "Pin digunakan untuk setiap transaksi yang terjadi di aplikasi",
                  textAlign: TextAlign.center,
                )),
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 14),
                child: Pinput(
                  length: 6,
                ),
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              FilledButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectMemberStepScreen(),
                      ));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.h),
                  child: Text(
                    'Simpan pin',
                    style: context.textTheme.headlineSmall
                        ?.copyWith(color: Colors.white, letterSpacing: 3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
