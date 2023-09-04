// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromJson(jsonString);

import 'dart:convert';

RegisterRequest registerRequestFromJson(String str) =>
    RegisterRequest.fromJson(json.decode(str));

String registerRequestToJson(RegisterRequest data) =>
    json.encode(data.toJson());

class RegisterRequest {
  String name;
  String password;
  String passwordConfirmation;
  String email;
  String phone;
  String nik;
  String gender;
  String pob;
  String dob;
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
  String countrycode;
  String memberTypeId;

  RegisterRequest({
    this.name = '',
    this.password = '',
    this.passwordConfirmation = '',
    this.email = '',
    this.phone = '',
    this.nik = '',
    this.gender = '',
    this.pob = '',
    this.dob = '',
    this.address = '',
    this.rt = '',
    this.rw = '',
    this.village = '',
    this.district = '',
    this.religion = '',
    this.maritalStatus = '',
    this.work = '',
    this.nationnality = '',
    this.city = '',
    this.province = '',
    this.countrycode = '',
    this.memberTypeId = '',
  });

  RegisterRequest copyWith({
    String? name,
    String? password,
    String? passwordConfirmation,
    String? email,
    String? phone,
    String? nik,
    String? gender,
    String? pob,
    String? dob,
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
    String? countrycode,
    String? memberTypeId,
  }) =>
      RegisterRequest(
        name: name ?? this.name,
        password: password ?? this.password,
        passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        nik: nik ?? this.nik,
        gender: gender ?? this.gender,
        pob: pob ?? this.pob,
        dob: dob ?? this.dob,
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
        countrycode: countrycode ?? this.countrycode,
        memberTypeId: memberTypeId ?? this.memberTypeId,
      );

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        name: json["name"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
        email: json["email"],
        phone: json["phone"],
        nik: json["nik"],
        gender: json["gender"],
        pob: json["pob"],
        dob: json["dob"],
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
        countrycode: json["countrycode"],
        memberTypeId: json["member_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "password_confirmation": passwordConfirmation,
        "email": email,
        "phone": phone,
        "nik": nik,
        "gender": gender,
        "pob": pob,
        "dob": dob,
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
        "countrycode": countrycode,
        "member_type_id": memberTypeId,
      };
}
