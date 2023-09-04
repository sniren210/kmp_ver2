import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  static pushScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ));
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: SizedBox(
            height: context.appSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 102.h,
                ),
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
                SizedBox(
                  height: 84.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Contoh 857...',
                          prefixIcon: CountryCodePicker(
                            enabled: false,
                            onChanged: (value) {},
                            initialSelection: 'ID',
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
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
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => ForgetPasswordScreen.pushScreen(context),
                            child: Text(
                              'Lupa kata sandi ?',
                              style: context.textTheme.labelLarge,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      FilledButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.0.h),
                          child: Text(
                            'Masuk',
                            style: context.textTheme.headlineMedium
                                ?.copyWith(color: Colors.white, letterSpacing: 3),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 32.w),
                        height: 50.h,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Text(
                                  'Belum punya akun?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => RegisterScreen.pushScreen(context),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.0.h),
                          child: Text(
                            'Daftar',
                            style: context.textTheme.headlineMedium?.copyWith(
                                color: ColorSchemeKmp.colorPrimary,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
