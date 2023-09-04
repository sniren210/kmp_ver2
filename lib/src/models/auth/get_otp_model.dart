// To parse this JSON data, do
//
//     final getOtpModel = getOtpModelFromJson(jsonString);

import 'dart:convert';

GetOtpModel getOtpModelFromJson(String str) => GetOtpModel.fromJson(json.decode(str));

String getOtpModelToJson(GetOtpModel data) => json.encode(data.toJson());

class GetOtpModel {
    int status;
    bool success;
    GetOtpData data;

    GetOtpModel({
        required this.status,
        required this.success,
        required this.data,
    });

    GetOtpModel copyWith({
        int? status,
        bool? success,
        GetOtpData? data,
    }) => 
        GetOtpModel(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory GetOtpModel.fromJson(Map<String, dynamic> json) => GetOtpModel(
        status: json["status"],
        success: json["success"],
        data: GetOtpData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class GetOtpData {
    String message;

    GetOtpData({
        required this.message,
    });

    GetOtpData copyWith({
        String? message,
    }) => 
        GetOtpData(
            message: message ?? this.message,
        );

    factory GetOtpData.fromJson(Map<String, dynamic> json) => GetOtpData(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
