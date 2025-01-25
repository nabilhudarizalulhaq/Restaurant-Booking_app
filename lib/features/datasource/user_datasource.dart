import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:restaurant_booking_app/features/models/list_user.dart'; // Assuming this file contains the User and UserListResponse models

class UserRepository {
  final String apiUrl;

  UserRepository({required this.apiUrl});

  Future<List<User>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final userListResponse = UserListResponse.fromJson(data);
      return userListResponse.data;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
