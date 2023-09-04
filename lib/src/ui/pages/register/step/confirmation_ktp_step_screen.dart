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
  final TextEditingController _ktpController =
      TextEditingController(text: 'ktp');
  final TextEditingController _nameController =
      TextEditingController(text: 'name');
  final TextEditingController _tglLahirController =
      TextEditingController(text: 'tglLahir');
  final TextEditingController _tmptLahirController =
      TextEditingController(text: 'tmptLahir');
  final TextEditingController _agamaController =
      TextEditingController(text: 'agama');
  final TextEditingController _statusPerkawinanaController =
      TextEditingController(text: 'statusPerkawinana');
  final TextEditingController _pekerjaanController =
      TextEditingController(text: 'pekerjaan');
  final TextEditingController _jenisKelaminController =
      TextEditingController(text: 'jenisKelamin');
  final TextEditingController _kewarganegaraanController =
      TextEditingController(text: 'kewarganegaraan');
  final TextEditingController _provinsiController =
      TextEditingController(text: 'provinsi');
  final TextEditingController _kotaController =
      TextEditingController(text: 'kota');
  final TextEditingController _kecamatanController =
      TextEditingController(text: 'kecamatan');
  final TextEditingController _desaController =
      TextEditingController(text: 'Desa');
  final TextEditingController _rtController = TextEditingController(text: 'rt');
  final TextEditingController _rwController = TextEditingController(text: 'rw');
  final TextEditingController _alamatController =
      TextEditingController(text: 'alamat');

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Konfirmasi data kamu',
          style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _ktpController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'ktp'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _nameController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'name'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _tglLahirController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'tglLahir'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _tmptLahirController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'tmptLahir'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _agamaController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'agama'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _statusPerkawinanaController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'statusPerkawinana'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _pekerjaanController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'pekerjaan'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _jenisKelaminController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'jenisKelamin'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _kewarganegaraanController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'kewarganegaraan'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _provinsiController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'provinsi'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _kotaController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'kota'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _kecamatanController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'kecamatan'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _desaController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'Desa'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _rtController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'rt'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _rwController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'rw'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
            TextFormField(
              controller: _alamatController,
              enabled: false,
              style: context.textTheme.titleMedium,
              decoration: InputDecoration(labelText: 'alamat'),
            ),
            SizedBox(
              height: context.dimensions.marginSizeLarge,
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationUserDataStepScreen(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Text(
                  'Selanjutnya',
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: Colors.white, letterSpacing: 3),
                ),
              ),
            ),
            SizedBox(
              height: context.dimensions.marginSizeDefault,
            ),
          ],
        ),
      ),
    );
  }
}
