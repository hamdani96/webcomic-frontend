import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webcomic/models/user_model.dart';

class AuthService {
  String baseUrl = 'https://webcomic.indohomecare.com/api';

  Future<UserModel> register({
    required String phone,
    required String email,
    required String name,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    // print(url);
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/login');
    // print(url);
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    // print(response.body);

    if (response.statusCode == 200) {
      // print('baloo');
      var data = jsonDecode(response.body)['data'];
      // print(data['user']);
      UserModel user = UserModel.fromJson(data['user']);
      // print(user);
      user.token = 'Bearer ' + data['access_token'];
      // print(token);

      return user;
    } else {
      throw Exception('Gagal login');
    }
  }
}
