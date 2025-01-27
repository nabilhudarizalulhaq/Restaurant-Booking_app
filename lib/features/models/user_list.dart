import 'dart:convert';

Userlist userlistFromJson(String str) => Userlist.fromJson(json.decode(str));

String userlistToJson(Userlist data) => json.encode(data.toJson());

class Userlist {
    final List<ListUser> data;

    Userlist({
        required this.data,
    });

    factory Userlist.fromJson(Map<String, dynamic> json) => Userlist(
        data: List<ListUser>.from(json["data"].map((x) => ListUser.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ListUser {
    final int id;
    final String email;
    final String firstName;
    final String lastName;
    final String avatar;

    ListUser({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    factory ListUser.fromJson(Map<String, dynamic> json) => ListUser(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}