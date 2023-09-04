// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  String? message;
  String token;

  AuthModel({
    this.message,
    required this.token,
  });

  AuthModel copyWith({
    String? message,
    String? token,
  }) =>
      AuthModel(
        message: message ?? this.message,
        token: token ?? this.token,
      );

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
      };
}
