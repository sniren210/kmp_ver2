// To parse this JSON data, do
//
//     final getOtpModel = getOtpModelFromJson(jsonString);

import 'dart:convert';

GetOtpModel getOtpModelFromJson(String str) =>
    GetOtpModel.fromJson(json.decode(str));

String getOtpModelToJson(GetOtpModel data) => json.encode(data.toJson());

class GetOtpModel {
  String message;

  GetOtpModel({
    required this.message,
  });

  GetOtpModel copyWith({
    String? message,
  }) =>
      GetOtpModel(
        message: message ?? this.message,
      );

  factory GetOtpModel.fromJson(Map<String, dynamic> json) => GetOtpModel(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
