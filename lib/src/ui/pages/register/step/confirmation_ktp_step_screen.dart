import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class ConfirmationKTPStepScreen extends StatefulWidget {
  final CheckKtpData data;
  const ConfirmationKTPStepScreen({super.key, required this.data});

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
  final TextEditingController _desaController = TextEditingController();
  final TextEditingController _rtController = TextEditingController();
  final TextEditingController _rwController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _ktpController.text = widget.data.message.message.id;
    _nameController.text = widget.data.message.message.name;
    _tglLahirController.text = widget.data.message.message.dob;
    _tmptLahirController.text = widget.data.message.message.pob;
    _agamaController.text = widget.data.message.message.religion;
    _statusPerkawinanaController.text =
        widget.data.message.message.maritalStatus;
    _pekerjaanController.text = widget.data.message.message.work;
    _jenisKelaminController.text = widget.data.message.message.gender;
    _kewarganegaraanController.text = widget.data.message.message.nationnality;
    _provinsiController.text = widget.data.message.message.province;
    _kotaController.text = widget.data.message.message.city;
    _kecamatanController.text = widget.data.message.message.district;
    _desaController.text = widget.data.message.message.village;
    _rtController.text = widget.data.message.message.rt;
    _rwController.text = widget.data.message.message.rw;
    _alamatController.text = widget.data.message.message.address;
  }

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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _ktpController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'ktp'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _nameController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'name'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _tglLahirController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'tglLahir'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _tmptLahirController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'tmptLahir'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _agamaController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'agama'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _statusPerkawinanaController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'statusPerkawinana'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _pekerjaanController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'pekerjaan'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _jenisKelaminController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'jenisKelamin'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _kewarganegaraanController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'kewarganegaraan'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _provinsiController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'provinsi'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _kotaController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'kota'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _kecamatanController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'kecamatan'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _desaController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'Desa'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _rtController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'rt'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _rwController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'rw'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeDefault,
              ),
              TextFormField(
                controller: _alamatController,
                enabled: false,
                validator: Validator.notEmpty,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(labelText: 'alamat'),
              ),
              SizedBox(
                height: context.dimensions.marginSizeLarge,
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    
                    repo.setDataKtp(
                      ktp: _ktpController.text,
                      name: _nameController.text,
                      tglLahir: _tglLahirController.text,
                      tmptLahir: _tmptLahirController.text,
                      agama: _agamaController.text,
                      statusPerkawinana: _statusPerkawinanaController.text,
                      pekerjaan: _pekerjaanController.text,
                      jenisKelamin: _jenisKelaminController.text,
                      kewarganegaraan: _kewarganegaraanController.text,
                      provinsi: _provinsiController.text,
                      kota: _kotaController.text,
                      kecamatan: _kecamatanController.text,
                      desa: _desaController.text,
                      rt: _rtController.text,
                      rw: _rwController.text,
                      alamat: _alamatController.text,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConfirmationUserDataStepScreen(),
                        ));
                  }
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
      ),
    );
  }
}
