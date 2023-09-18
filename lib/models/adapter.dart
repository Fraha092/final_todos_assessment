import 'dart:convert';

import 'package:flutter_data/flutter_data.dart';

import 'Product model.dart';
import 'User model.dart';
import 'package:http/http.dart' as http;

mixin JSONPlaceholderAdapter<T extends DataModel<T>> on RemoteAdapter<T> {
  @override
  String get baseUrl => 'https://stg-zero.propertyproplus.com.au/api';

  @override
  Map<String, String> get headers => {
    'Abp.TenantId': '10',
  'Content-Type': 'application/json; charset=UTF-8',
  };

//
//   @override
//   Future<User> login(String username, String password) async {
//     final response = await http.post(Uri.parse('$baseUrl/TokenAuth/Authenticate'),
//       headers: headers,
//       body: jsonEncode(<String, String>{
//         'userNameOrEmailAddress': username,
//         'password': password,
//       }),
//     );
//
//     if (response.statusCode == 200) {
//       return User.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Failed to authenticate.');
//     }
//   }
//
// @override
//   Future<List<Product>> getProducts(String accessToken) async {
//     final response = await http.get(Uri.parse('$baseUrl/services/app/ProductSync/GetAllproduct'),
//       headers: {
//         'Abp.TenantId': '10',
//         'Authorization': 'Bearer $accessToken',
//       },
//     );
//
//     if (response.statusCode == 200) {
//       Iterable list = json.decode(response.body);
//       return list.map((model) => Product.fromJson(model)).toList();
//     } else {
//       throw Exception('Failed to load products.');
//     }
//   }
}
