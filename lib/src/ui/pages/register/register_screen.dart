import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final repo = context.watch<RegisterProvider>();

    return Scaffold(
      appBar: AppBar(),
      body: OverlayLoadingWidget(
        loading: repo.isLoading,
        child: Form(
          key: _formKey,
          child: Padding(
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
                  validator: Validator.number,
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
                  onPressed: () async {
                  
                    if (_formKey.currentState?.validate() ?? false) {
                      final res = await repo.setPhoneNumber(
                          phoneNumber: _phoneNumberController.text);

                      if (res.data.message == 'Send otp successfully!') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpCodeStepScreen(
                                  phoneNumber: _phoneNumberController.text),
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
                      'Daftar',
                      style: context.textTheme.headlineMedium
                          ?.copyWith(color: Colors.white, letterSpacing: 3),
                    ),
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
