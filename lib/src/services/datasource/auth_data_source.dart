import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class AuthDataSource {
  final DioClient dioClient;

  AuthDataSource({required this.dioClient});

  Future<AuthModel> register({required RegisterRequest request}) async {
    final response = await dioClient.post(AppConstants.apiConstant.register,
        data: request.toJson());

    if (response.statusCode == 201) {
      return ApiCallResponse<AuthModel>.fromJson(response.data).response;
    }

    throw Exception();
  }

  Future<AuthModel> login(
      {required String email, required String password}) async {
    final response = await dioClient.post(
      AppConstants.apiConstant.login,
      data: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return ApiCallResponse<AuthModel>.fromJson(response.data).response;
    }

    throw Exception();
  }

  Future<GetOtpModel> getOtp({required String phoneNumber}) async {
    final response = await dioClient.post(
      AppConstants.apiConstant.getOtp,
      data: {'phone': phoneNumber},
    );

    if (response.statusCode == 200) {
      return ApiCallResponse<GetOtpModel>.fromJson(response.data).response;
    }

    throw Exception();
  }

  Future<GetOtpModel> verifyOtp(
      {required String phoneNumber, required String code}) async {
    final response = await dioClient.post(
      AppConstants.apiConstant.verifyOtp,
      data: {
        'phone': phoneNumber,
        'code': code,
      },
    );

    if (response.statusCode == 200) {
      return ApiCallResponse<GetOtpModel>.fromJson(response.data).response;
    }

    throw Exception();
  }

  Future<CheckKtpModel> checkKtp({required File image}) async {
    String fileName = image.path.split('/').last;

    final response = await dioClient.post(
      AppConstants.apiConstant.checkKtp,
      data: {
        'image': await MultipartFile.fromFile(image.path, filename: fileName),
      },
      options: Options(contentType: 'multipart/form-data'),
    );

    if (response.statusCode == 200) {
      return ApiCallResponse<CheckKtpModel>.fromJson(response.data).response;
    }

    throw Exception();
  }

  Future<SetMemberModel> setMember({required String memberTypeId}) async {
    final response = await dioClient.post(
      AppConstants.apiConstant.setMember,
      data: {'member_type_id': memberTypeId},
    );

    if (response.statusCode == 200) {
      return ApiCallResponse<SetMemberModel>.fromJson(response.data).response;
    }

    throw Exception();
  }
}
