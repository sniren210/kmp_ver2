import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterProvider extends ChangeNotifier with LoadingChangeNotifierMixin {
  final AuthDataSource _authDataSource = sl<AuthDataSource>();
  final SharedPreferences _sharedPreferences = sl<SharedPreferences>();
  RegisterRequest registerRequest = RegisterRequest();

  Future<GetOtpModel> setPhoneNumber({required String phoneNumber}) async {
    try {
      setLoading(true);
      final res = await _authDataSource.getOtp(phoneNumber: phoneNumber);
      setLoading(false);

      return res;
    } catch (e) {
      setLoading(false);
      throw Exception();
    }
  }

  Future<GetOtpModel> verifyPhoneNumber(
      {required String phoneNumber, required String code}) async {
    try {
      setLoading(true);
      final res =
          await _authDataSource.verifyOtp(phoneNumber: phoneNumber, code: code);
      setLoading(false);

      registerRequest = registerRequest.copyWith(phone: phoneNumber);
      notifyListeners();

      return res;
    } catch (e) {
      setLoading(false);
      throw Exception();
    }
  }

  void setDataUser({required String email, required String password}) {
    registerRequest =
        registerRequest.copyWith(email: email, password: password);

    notifyListeners();
  }

  void setPin({required String pin}) {
    // registerRequest =
    //     registerRequest.copyWith(email: email, password: password);

    notifyListeners();
  }

  Future<SetMemberModel> setmemberType({required String memberType}) async {
    try {
      final res = await _authDataSource.setMember(memberTypeId: memberType);

      if (res.success) {
        registerRequest = registerRequest.copyWith(memberTypeId: memberType);
        notifyListeners();
      }

      return res;
    } catch (e) {
      setLoading(false);
      throw Exception();
    }
  }

  void setDataKtp({
    required String ktp,
    required String name,
    required String tglLahir,
    required String tmptLahir,
    required String agama,
    required String statusPerkawinana,
    required String pekerjaan,
    required String jenisKelamin,
    required String kewarganegaraan,
    required String provinsi,
    required String kota,
    required String kecamatan,
    required String desa,
    required String rt,
    required String rw,
    required String alamat,
  }) async {
    registerRequest = registerRequest.copyWith(
      nik: ktp,
      name: name,
      dob: tglLahir,
      pob: tmptLahir,
      religion: agama,
      maritalStatus: statusPerkawinana,
      work: pekerjaan,
      gender: jenisKelamin,
      nationnality: kewarganegaraan,
      province: provinsi,
      city: kota,
      district: kecamatan,
      village: desa,
      rt: rt,
      rw: rw,
      address: alamat,
    );

    notifyListeners();
  }

  Future<CheckKtpModel> uploadKtp({required File image}) async {
    try {
      setLoading(true);
      final res = await _authDataSource.checkKtp(image: image);
      setLoading(false);

      return res;
    } catch (e) {
      setLoading(false);
      throw Exception();
    }
  }

  Future<bool> register() async {
    try {
      setLoading(true);
      final res = await _authDataSource.register(request: registerRequest);
      setLoading(false);

      if (res.success) {
        _sharedPreferences.setString(
            AppConstants.prefsConstant.token, res.data.token);
      }

      return res.success;
    } catch (e) {
      setLoading(false);
      throw Exception();
    }
  }
}
