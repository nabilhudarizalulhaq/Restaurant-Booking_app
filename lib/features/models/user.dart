class UserList {
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;

  UserList({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  factory UserList.fromJson(Map<String, dynamic> json) {
    return UserList(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      avatar: json['avatar'],
    );
  }
}

