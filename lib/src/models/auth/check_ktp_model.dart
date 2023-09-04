// To parse this JSON data, do
//
//     final checkKtpModel = checkKtpModelFromJson(jsonString);

import 'dart:convert';

CheckKtpModel checkKtpModelFromJson(String str) => CheckKtpModel.fromJson(json.decode(str));

String checkKtpModelToJson(CheckKtpModel data) => json.encode(data.toJson());

class CheckKtpModel {
    int status;
    bool success;
    CheckKtpData data;

    CheckKtpModel({
        required this.status,
        required this.success,
        required this.data,
    });

    CheckKtpModel copyWith({
        int? status,
        bool? success,
        CheckKtpData? data,
    }) => 
        CheckKtpModel(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory CheckKtpModel.fromJson(Map<String, dynamic> json) => CheckKtpModel(
        status: json["status"],
        success: json["success"],
        data: CheckKtpData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class CheckKtpData {
    DataMessage message;

    CheckKtpData({
        required this.message,
    });

    CheckKtpData copyWith({
        DataMessage? message,
    }) => 
        CheckKtpData(
            message: message ?? this.message,
        );

    factory CheckKtpData.fromJson(Map<String, dynamic> json) => CheckKtpData(
        message: DataMessage.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message.toJson(),
    };
}

class DataMessage {
    String status;
    MessageMessage message;

    DataMessage({
        required this.status,
        required this.message,
    });

    DataMessage copyWith({
        String? status,
        MessageMessage? message,
    }) => 
        DataMessage(
            status: status ?? this.status,
            message: message ?? this.message,
        );

    factory DataMessage.fromJson(Map<String, dynamic> json) => DataMessage(
        status: json["status"],
        message: MessageMessage.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message.toJson(),
    };
}

class MessageMessage {
    String name;
    String id;
    String pob;
    String dob;
    String gender;
    String address;
    String rt;
    String rw;
    String village;
    String district;
    String religion;
    String maritalStatus;
    String work;
    String nationnality;
    String city;
    String province;

    MessageMessage({
        required this.name,
        required this.id,
        required this.pob,
        required this.dob,
        required this.gender,
        required this.address,
        required this.rt,
        required this.rw,
        required this.village,
        required this.district,
        required this.religion,
        required this.maritalStatus,
        required this.work,
        required this.nationnality,
        required this.city,
        required this.province,
    });

    MessageMessage copyWith({
        String? name,
        String? id,
        String? pob,
        String? dob,
        String? gender,
        String? address,
        String? rt,
        String? rw,
        String? village,
        String? district,
        String? religion,
        String? maritalStatus,
        String? work,
        String? nationnality,
        String? city,
        String? province,
    }) => 
        MessageMessage(
            name: name ?? this.name,
            id: id ?? this.id,
            pob: pob ?? this.pob,
            dob: dob ?? this.dob,
            gender: gender ?? this.gender,
            address: address ?? this.address,
            rt: rt ?? this.rt,
            rw: rw ?? this.rw,
            village: village ?? this.village,
            district: district ?? this.district,
            religion: religion ?? this.religion,
            maritalStatus: maritalStatus ?? this.maritalStatus,
            work: work ?? this.work,
            nationnality: nationnality ?? this.nationnality,
            city: city ?? this.city,
            province: province ?? this.province,
        );

    factory MessageMessage.fromJson(Map<String, dynamic> json) => MessageMessage(
        name: json["name"],
        id: json["id"],
        pob: json["pob"],
        dob: json["dob"],
        gender: json["gender"],
        address: json["address"],
        rt: json["rt"],
        rw: json["rw"],
        village: json["village"],
        district: json["district"],
        religion: json["religion"],
        maritalStatus: json["marital_status"],
        work: json["work"],
        nationnality: json["nationnality"],
        city: json["city"],
        province: json["province"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "pob": pob,
        "dob": dob,
        "gender": gender,
        "address": address,
        "rt": rt,
        "rw": rw,
        "village": village,
        "district": district,
        "religion": religion,
        "marital_status": maritalStatus,
        "work": work,
        "nationnality": nationnality,
        "city": city,
        "province": province,
    };
}
