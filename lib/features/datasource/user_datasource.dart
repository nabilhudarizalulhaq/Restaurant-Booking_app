import 'package:http/http.dart' as http;
import 'package:restaurant_booking_app/features/models/user_list.dart';

void main() async {
  const baseUrl = 'https://reqres.in';
  final remoteDataSource = RemoteDataSource(baseUrl: baseUrl);

  try {
    final userlist = await remoteDataSource.fetchUserList();
    print('User list fetched successfully:');
    for (var user in userlist.data) {
      print('${user.firstName} ${user.lastName} - ${user.email}');
    }
  } catch (e) {
    print('Error fetching user list: $e');
  }
}

class RemoteDataSource {
  final String baseUrl;

  RemoteDataSource({required this.baseUrl});

  Future<Userlist> fetchUserList() async {
    final url = Uri.parse('$baseUrl/api/users?page=2');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return userlistFromJson(response.body);
      } else {
        throw Exception('Failed to load user list: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch user list: $e');
    }
  }
}
