import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list.freezed.dart';
part 'user_list.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserList with _$UserList {
  const factory UserList({
    required List<User> data,
  }) = _UserList;

  factory UserList.fromJson(Map<String, dynamic> json) =>
      _$UserListFromJson(json);
}
