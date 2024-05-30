import 'dart:convert';

import 'package:http/http.dart' as http;

import 'user_model.dart';

class UserReponsitory {
  Future<List<User>> fetchUser() async {
    // Simulate network delay
    final reponse = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    if (reponse.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(reponse.body);
      return jsonList.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}
