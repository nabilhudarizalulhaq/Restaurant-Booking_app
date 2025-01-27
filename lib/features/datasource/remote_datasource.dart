import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  final String baseUrl;

  AuthRemoteDataSource(this.baseUrl);

  Future<String> login(String email, String password) async {
    final url =
        Uri.parse('https://reqres.in/api/login');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      if (responseBody.containsKey('token')) {
        final token = responseBody['token'];
        return token;
      } else {
        throw Exception('Login failed: ${responseBody['error']}');
      }
    } else {
      throw Exception('Failed to login. Status code: ${response.statusCode}');
    }
  }

  Future<String> register(String email, String password) async {
    final url = Uri.parse('$baseUrl/register');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      if (responseBody.containsKey('token')) {
        final token = responseBody['token'];
        return token;
      } else {
        throw Exception('Registration failed: ${responseBody['error']}');
      }
    } else {
      throw Exception('Failed to register. Status code: ${response.statusCode}');
    }
  }
}
