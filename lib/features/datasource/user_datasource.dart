//
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:restaurant_booking_app/features/models/home/user_list.dart';

class UserRemoteDataSource {
  final String baseUrl;

  UserRemoteDataSource(this.baseUrl);

  Future<List<User>> fetchUsers() async {
    final url = Uri.parse('https://reqres.in/api/users?page=2');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      if (responseBody.containsKey('data')) {
        final userListResponse = UserList.fromJson(responseBody);
        return userListResponse.data;
      } else {
        throw Exception('Failed to load users: No data found');
      }
    } else {
      throw Exception(
          'Failed to load users. Status code: ${response.statusCode}');
    }
  }
}
