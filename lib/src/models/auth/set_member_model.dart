// To parse this JSON data, do
//
//     final setMemberModel = setMemberModelFromJson(jsonString);

import 'dart:convert';

SetMemberModel setMemberModelFromJson(String str) => SetMemberModel.fromJson(json.decode(str));

String setMemberModelToJson(SetMemberModel data) => json.encode(data.toJson());

class SetMemberModel {
    int status;
    bool success;
    SetMemberData data;

    SetMemberModel({
        required this.status,
        required this.success,
        required this.data,
    });

    SetMemberModel copyWith({
        int? status,
        bool? success,
        SetMemberData? data,
    }) => 
        SetMemberModel(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory SetMemberModel.fromJson(Map<String, dynamic> json) => SetMemberModel(
        status: json["status"],
        success: json["success"],
        data: SetMemberData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class SetMemberData {
    SetMemberResponse response;

    SetMemberData({
        required this.response,
    });

    SetMemberData copyWith({
        SetMemberResponse? response,
    }) => 
        SetMemberData(
            response: response ?? this.response,
        );

    factory SetMemberData.fromJson(Map<String, dynamic> json) => SetMemberData(
        response: SetMemberResponse.fromJson(json["response"]),
    );

    Map<String, dynamic> toJson() => {
        "response": response.toJson(),
    };
}

class SetMemberResponse {
    String uuid;
    int userId;
    String name;
    String accountNumber;
    String procode;
    String merchantTrxId;
    int transactionId;
    String additionalData;
    int merchantId;
    int amount;
    String flagAmount;
    String isClosed;
    String status;
    String type;
    String monthlyPrincipalFee;
    String monthlyMandatoryFee;
    int feeFixed;
    int feePercentage;
    int adminFee;
    String responseVendor;
    DateTime expiresAt;
    String meta;
    DateTime updatedAt;
    DateTime createdAt;
    int id;
    String memberName;
    String typeMember;

    SetMemberResponse({
        required this.uuid,
        required this.userId,
        required this.name,
        required this.accountNumber,
        required this.procode,
        required this.merchantTrxId,
        required this.transactionId,
        required this.additionalData,
        required this.merchantId,
        required this.amount,
        required this.flagAmount,
        required this.isClosed,
        required this.status,
        required this.type,
        required this.monthlyPrincipalFee,
        required this.monthlyMandatoryFee,
        required this.feeFixed,
        required this.feePercentage,
        required this.adminFee,
        required this.responseVendor,
        required this.expiresAt,
        required this.meta,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
        required this.memberName,
        required this.typeMember,
    });

    SetMemberResponse copyWith({
        String? uuid,
        int? userId,
        String? name,
        String? accountNumber,
        String? procode,
        String? merchantTrxId,
        int? transactionId,
        String? additionalData,
        int? merchantId,
        int? amount,
        String? flagAmount,
        String? isClosed,
        String? status,
        String? type,
        String? monthlyPrincipalFee,
        String? monthlyMandatoryFee,
        int? feeFixed,
        int? feePercentage,
        int? adminFee,
        String? responseVendor,
        DateTime? expiresAt,
        String? meta,
        DateTime? updatedAt,
        DateTime? createdAt,
        int? id,
        String? memberName,
        String? typeMember,
    }) => 
        SetMemberResponse(
            uuid: uuid ?? this.uuid,
            userId: userId ?? this.userId,
            name: name ?? this.name,
            accountNumber: accountNumber ?? this.accountNumber,
            procode: procode ?? this.procode,
            merchantTrxId: merchantTrxId ?? this.merchantTrxId,
            transactionId: transactionId ?? this.transactionId,
            additionalData: additionalData ?? this.additionalData,
            merchantId: merchantId ?? this.merchantId,
            amount: amount ?? this.amount,
            flagAmount: flagAmount ?? this.flagAmount,
            isClosed: isClosed ?? this.isClosed,
            status: status ?? this.status,
            type: type ?? this.type,
            monthlyPrincipalFee: monthlyPrincipalFee ?? this.monthlyPrincipalFee,
            monthlyMandatoryFee: monthlyMandatoryFee ?? this.monthlyMandatoryFee,
            feeFixed: feeFixed ?? this.feeFixed,
            feePercentage: feePercentage ?? this.feePercentage,
            adminFee: adminFee ?? this.adminFee,
            responseVendor: responseVendor ?? this.responseVendor,
            expiresAt: expiresAt ?? this.expiresAt,
            meta: meta ?? this.meta,
            updatedAt: updatedAt ?? this.updatedAt,
            createdAt: createdAt ?? this.createdAt,
            id: id ?? this.id,
            memberName: memberName ?? this.memberName,
            typeMember: typeMember ?? this.typeMember,
        );

    factory SetMemberResponse.fromJson(Map<String, dynamic> json) => SetMemberResponse(
        uuid: json["uuid"],
        userId: json["user_id"],
        name: json["name"],
        accountNumber: json["account_number"],
        procode: json["procode"],
        merchantTrxId: json["merchant_trx_id"],
        transactionId: json["transaction_id"],
        additionalData: json["additional_data"],
        merchantId: json["merchant_id"],
        amount: json["amount"],
        flagAmount: json["flag_amount"],
        isClosed: json["is_closed"],
        status: json["status"],
        type: json["type"],
        monthlyPrincipalFee: json["monthly_principal_fee"],
        monthlyMandatoryFee: json["monthly_mandatory_fee"],
        feeFixed: json["fee_fixed"],
        feePercentage: json["fee_percentage"],
        adminFee: json["admin_fee"],
        responseVendor: json["response_vendor"],
        expiresAt: DateTime.parse(json["expires_at"]),
        meta: json["meta"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        memberName: json["member_name"],
        typeMember: json["type_member"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "user_id": userId,
        "name": name,
        "account_number": accountNumber,
        "procode": procode,
        "merchant_trx_id": merchantTrxId,
        "transaction_id": transactionId,
        "additional_data": additionalData,
        "merchant_id": merchantId,
        "amount": amount,
        "flag_amount": flagAmount,
        "is_closed": isClosed,
        "status": status,
        "type": type,
        "monthly_principal_fee": monthlyPrincipalFee,
        "monthly_mandatory_fee": monthlyMandatoryFee,
        "fee_fixed": feeFixed,
        "fee_percentage": feePercentage,
        "admin_fee": adminFee,
        "response_vendor": responseVendor,
        "expires_at": expiresAt.toIso8601String(),
        "meta": meta,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
        "member_name": memberName,
        "type_member": typeMember,
    };
}
