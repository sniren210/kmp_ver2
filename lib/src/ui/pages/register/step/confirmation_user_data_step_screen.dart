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
  bool termOfService = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<RegisterProvider>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Konfirmasi data kamu',
          style: context.textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _emailController,
                validator: Validator.email,
                decoration: InputDecoration(
                  hintText: 'Masukan email anda',
                ),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  return Validator.password(value);
                },
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
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: _obscurePassword,
                validator: (value) {
                  if (value != _passwordController.text) {
                    return 'Passwords do not match.';
                  }

                  return Validator.password(value);
                },
                decoration: InputDecoration(
                  hintText: 'Password Confirmation',
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
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _referalController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Masukan referral anda',
                ),
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              Row(
                children: [
                  Checkbox(
                    value: termOfService,
                    onChanged: (bool? value) {
                      setState(() {
                        termOfService = !termOfService;
                      });
                    },
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {})
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              FilledButton(
                onPressed: () {
                  if ((_formKey.currentState?.validate() ?? false) && termOfService) {
                    repo.setDataUser(
                        email: _emailController.text,
                        password: _passwordController.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PinSetUserStepScreen(),
                        ));
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.h),
                  child: Text(
                    'Mendaftar',
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
