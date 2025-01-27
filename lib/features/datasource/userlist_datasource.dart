import 'package:dio/dio.dart';
import 'package:restaurant_booking_app/features/models/user.dart';

class UserListRemoteDataSource {
  final String url;

  UserListRemoteDataSource(this.url);

  Future<List<UserList>> fetchUsers() async {
    final response = await Dio().get('https://reqres.in/api/users?page=2');
    final data = response.data['data'] as List;
    return data.map((user) => UserList.fromJson(user)).toList();
  }
}
