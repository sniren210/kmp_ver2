import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class ConfirmationKTPStepScreen extends StatefulWidget {
  const ConfirmationKTPStepScreen({super.key});

  @override
  State<ConfirmationKTPStepScreen> createState() =>
      _ConfirmationKTPStepScreenState();
}

class _ConfirmationKTPStepScreenState extends State<ConfirmationKTPStepScreen> {
  final TextEditingController _ktpController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _tglLahirController = TextEditingController();
  final TextEditingController _tmptLahirController = TextEditingController();
  final TextEditingController _agamaController = TextEditingController();
  final TextEditingController _statusPerkawinanaController =
      TextEditingController();
  final TextEditingController _pekerjaanController = TextEditingController();
  final TextEditingController _jenisKelaminController = TextEditingController();
  final TextEditingController _kewarganegaraanController =
      TextEditingController();
  final TextEditingController _provinsiController = TextEditingController();
  final TextEditingController _kotaController = TextEditingController();
  final TextEditingController _kecamatanController = TextEditingController();
  final TextEditingController _DesaController = TextEditingController();
  final TextEditingController _rtController = TextEditingController();
  final TextEditingController _rwController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: _ktpController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _nameController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _tglLahirController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _tmptLahirController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _agamaController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _statusPerkawinanaController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _pekerjaanController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _jenisKelaminController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _kewarganegaraanController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _provinsiController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _kotaController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _kecamatanController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _DesaController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _rtController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _rwController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              controller: _alamatController,
              enabled: false,
            ),
            SizedBox(
              height: 24.h,
            ),
            FilledButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Selanjutnya',
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
