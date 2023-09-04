// To parse this JSON data, do
//
//     final onboardingModel = onboardingModelFromJson(jsonString);

import 'dart:convert';

OnboardingModel onboardingModelFromJson(String str) => OnboardingModel.fromJson(json.decode(str));

String onboardingModelToJson(OnboardingModel data) => json.encode(data.toJson());

class OnboardingModel {
    int status;
    bool success;
    OnboardingData data;

    OnboardingModel({
        required this.status,
        required this.success,
        required this.data,
    });

    OnboardingModel copyWith({
        int? status,
        bool? success,
        OnboardingData? data,
    }) => 
        OnboardingModel(
            status: status ?? this.status,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory OnboardingModel.fromJson(Map<String, dynamic> json) => OnboardingModel(
        status: json["status"],
        success: json["success"],
        data: OnboardingData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
    };
}

class OnboardingData {
    List<Intro> intros;

    OnboardingData({
        required this.intros,
    });

    OnboardingData copyWith({
        List<Intro>? intros,
    }) => 
        OnboardingData(
            intros: intros ?? this.intros,
        );

    factory OnboardingData.fromJson(Map<String, dynamic> json) => OnboardingData(
        intros: List<Intro>.from(json["intros"].map((x) => Intro.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "intros": List<dynamic>.from(intros.map((x) => x.toJson())),
    };
}

class Intro {
    int id;
    String title;
    String image;
    String published;
    DateTime createdAt;
    DateTime updatedAt;

    Intro({
        required this.id,
        required this.title,
        required this.image,
        required this.published,
        required this.createdAt,
        required this.updatedAt,
    });

    Intro copyWith({
        int? id,
        String? title,
        String? image,
        String? published,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        Intro(
            id: id ?? this.id,
            title: title ?? this.title,
            image: image ?? this.image,
            published: published ?? this.published,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Intro.fromJson(Map<String, dynamic> json) => Intro(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        published: json["published"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "published": published,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
