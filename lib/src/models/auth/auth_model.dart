// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
    int status;
    bool success;
    AuthData data;

    AuthModel({
        required this.status,
        required this.success,
        required this.data,
    });

    AuthModel copyWith({
        int? status,
        bool? success,
        AuthData? data,
    }) => 
        AuthModel(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        status: json["status"],
        success: json["success"],
        data: AuthData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class AuthData {
    String? message;
    String token;

    AuthData({
        required this.message,
        required this.token,
    });

    AuthData copyWith({
        String? message,
        String? token,
    }) => 
        AuthData(
            message: message ?? this.message,
            token: token ?? this.token,
        );

    factory AuthData.fromJson(Map<String, dynamic> json) => AuthData(
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
    };
}
