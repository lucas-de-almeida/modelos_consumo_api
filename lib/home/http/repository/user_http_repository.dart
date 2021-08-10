import 'dart:convert';

import 'package:consumindo_api/model/user_model.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http
          .get('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');
      Future.delayed(Duration(milliseconds: 2000));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap.map<UserModel>((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
