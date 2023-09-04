import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

  static pushScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return RegisterScreen();
        },
      ),
    );
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'R-RIDE',
                      style: context.textTheme.displayLarge?.copyWith(
                        color: ColorSchemeKmp.colorPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      ImageConstant.logo,
                      height: 100.h,
                    ),
                  ],
                ),
              ],
            ),
            TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Contoh 857...',
                prefixIcon: CountryCodePicker(
                  onChanged: (value) {},
                  initialSelection: 'ID',
                  enabled: false,
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpCodeStepScreen(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Daftar',
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
