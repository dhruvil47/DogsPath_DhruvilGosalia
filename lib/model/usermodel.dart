// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
    UserModel({
        this.id,
        this.title,
        this.subPaths,
        this.createdAt,
        this.name,
        this.avatar,
    });

    String id;
    String title;
    List<SubPath> subPaths;
    DateTime createdAt;
    String name;
    String avatar;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        subPaths: json["sub_paths"] == null ? null : List<SubPath>.from(json["sub_paths"].map((x) => SubPath.fromJson(x))),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"] == null ? null : json["name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "sub_paths": subPaths == null ? null : List<dynamic>.from(subPaths.map((x) => x.toJson())),
        "createdAt": createdAt == null ? null : createdAt.toIso8601String(),
        "name": name == null ? null : name,
        "avatar": avatar == null ? null : avatar,
    };
}

class SubPath {
    SubPath({
        this.id,
        this.title,
        this.image,
    });

    String id;
    String title;
    String image;

    factory SubPath.fromJson(Map<String, dynamic> json) => SubPath(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        image: json["image"] == null ? null : json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "image": image == null ? null : image,
    };
}
