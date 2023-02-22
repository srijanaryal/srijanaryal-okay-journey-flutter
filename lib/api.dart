import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user.dart';

class Api {
  final String baseUrl = 'https://randomuser.me/api/';

  Future<List<User>> getUsers({int results = 30}) async {
    final response = await http.get(Uri.parse('$baseUrl?results=$results'));
    if (response.statusCode == 200) {
      final results = json.decode(response.body)['results'] as List<dynamic>;
      return results.map((result) => User.fromJson(result)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<List<User>> searchUsers(String searchTerm) async {
    final response = await http
        .get(Uri.parse('$baseUrl?results=10&nat=us&seed=$searchTerm'));
    if (response.statusCode == 200) {
      final results = json.decode(response.body)['results'] as List<dynamic>;
      return results.map((result) => User.fromJson(result)).toList();
    } else {
      throw Exception('Failed to search users');
    }
  }
}
