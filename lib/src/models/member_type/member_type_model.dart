// To parse this JSON data, do
//
//     final listMemberType = listMemberTypeFromJson(jsonString);

import 'dart:convert';

ListMemberType listMemberTypeFromJson(String str) => ListMemberType.fromJson(json.decode(str));

String listMemberTypeToJson(ListMemberType data) => json.encode(data.toJson());

class ListMemberType {
    int status;
    bool success;
    MemberTypeData data;

    ListMemberType({
        required this.status,
        required this.success,
        required this.data,
    });

    ListMemberType copyWith({
        int? status,
        bool? success,
        MemberTypeData? data,
    }) => 
        ListMemberType(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory ListMemberType.fromJson(Map<String, dynamic> json) => ListMemberType(
        status: json["status"],
        success: json["success"],
        data: MemberTypeData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class MemberTypeData {
    List<MemberType> memberTypes;

    MemberTypeData({
        required this.memberTypes,
    });

    MemberTypeData copyWith({
        List<MemberType>? memberTypes,
    }) => 
        MemberTypeData(
            memberTypes: memberTypes ?? this.memberTypes,
        );

    factory MemberTypeData.fromJson(Map<String, dynamic> json) => MemberTypeData(
        memberTypes: List<MemberType>.from(json["member_types"].map((x) => MemberType.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "member_types": List<dynamic>.from(memberTypes.map((x) => x.toJson())),
    };
}

class MemberType {
    int id;
    String name;
    String monthlyPrincipalFee;
    String monthlyMandatoryFee;
    String description;
    String benefit;
    String status;
    DateTime createdAt;
    DateTime updatedAt;

    MemberType({
        required this.id,
        required this.name,
        required this.monthlyPrincipalFee,
        required this.monthlyMandatoryFee,
        required this.description,
        required this.benefit,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    MemberType copyWith({
        int? id,
        String? name,
        String? monthlyPrincipalFee,
        String? monthlyMandatoryFee,
        String? description,
        String? benefit,
        String? status,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        MemberType(
            id: id ?? this.id,
            name: name ?? this.name,
            monthlyPrincipalFee: monthlyPrincipalFee ?? this.monthlyPrincipalFee,
            monthlyMandatoryFee: monthlyMandatoryFee ?? this.monthlyMandatoryFee,
            description: description ?? this.description,
            benefit: benefit ?? this.benefit,
            status: status ?? this.status,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory MemberType.fromJson(Map<String, dynamic> json) => MemberType(
        id: json["id"],
        name: json["name"],
        monthlyPrincipalFee: json["monthly_principal_fee"],
        monthlyMandatoryFee: json["monthly_mandatory_fee"],
        description: json["description"],
        benefit: json["benefit"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "monthly_principal_fee": monthlyPrincipalFee,
        "monthly_mandatory_fee": monthlyMandatoryFee,
        "description": description,
        "benefit": benefit,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
