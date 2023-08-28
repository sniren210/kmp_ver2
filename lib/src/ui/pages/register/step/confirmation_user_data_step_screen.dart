import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class ConfirmationUserDataStepScreen extends StatefulWidget {
  const ConfirmationUserDataStepScreen({super.key});

  @override
  State<ConfirmationUserDataStepScreen> createState() =>
      _ConfirmationUserDataStepScreenState();
}

class _ConfirmationUserDataStepScreenState
    extends State<ConfirmationUserDataStepScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _referalController = TextEditingController();
  bool _obscurePassword = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Masukan email anda',
              ),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Container(
                  width: 50.w,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 10.w, left: 4.w),
                  child: Icon(Icons.lock, size: 18.sp),
                ),
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 10.w),
                    child: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 18.sp),
                  ),
                  onTap: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Container(
                  width: 50.w,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 10.w, left: 4.w),
                  child: Icon(Icons.lock, size: 18.sp),
                ),
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 10.w),
                    child: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 18.sp),
                  ),
                  onTap: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            TextFormField(
              controller: _referalController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Masukan email anda',
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: 'saya telah membaca dan menyetujui',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Kebijakan privasi ',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                          TextSpan(
                              text: ' dan ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                }),
                          TextSpan(
                              text: ' Peraturan anggota ',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {})
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            FilledButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Mendaftar',
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
