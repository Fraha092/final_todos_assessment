import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/User model.dart';
import '../models/adapter.dart';

class UserRepository{
  final JSONPlaceholderAdapter<User> _adapter;
  UserRepository(this._adapter);

  String get baseUrl => 'https://stg-zero.propertyproplus.com.au/api';

  @override
  Future<User> login(String username, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/TokenAuth/Authenticate'),
      headers: {
        'Abp.TenantId': '10',
        'Content-Type': 'application/json; charset=UTF-8',
        },
      body: jsonEncode(<String, String>{
        'userNameOrEmailAddress': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to authenticate.');
    }
  }
}