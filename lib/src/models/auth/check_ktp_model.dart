// To parse this JSON data, do
//
//     final checkKtpModel = checkKtpModelFromJson(jsonString);

import 'dart:convert';

CheckKtpModel checkKtpModelFromJson(String str) => CheckKtpModel.fromJson(json.decode(str));

String checkKtpModelToJson(CheckKtpModel data) => json.encode(data.toJson());

class CheckKtpModel {
    CheckKtpModelMessage message;

    CheckKtpModel({
        required this.message,
    });

    CheckKtpModel copyWith({
        CheckKtpModelMessage? message,
    }) => 
        CheckKtpModel(
            message: message ?? this.message,
        );

    factory CheckKtpModel.fromJson(Map<String, dynamic> json) => CheckKtpModel(
        message: CheckKtpModelMessage.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message.toJson(),
    };
}

class CheckKtpModelMessage {
    String status;
    MessageMessage message;

    CheckKtpModelMessage({
        required this.status,
        required this.message,
    });

    CheckKtpModelMessage copyWith({
        String? status,
        MessageMessage? message,
    }) => 
        CheckKtpModelMessage(
            status: status ?? this.status,
            message: message ?? this.message,
        );

    factory CheckKtpModelMessage.fromJson(Map<String, dynamic> json) => CheckKtpModelMessage(
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
