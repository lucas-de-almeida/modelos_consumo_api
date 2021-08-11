import 'package:consumindo_api/model/user_model.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryDio implements IUserRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio
          .get<List>('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');
      return response.data.map((e) => UserModel.fromMap(e)).toList();
    } on DioError catch (e) {
      print(e);
      rethrow;
    }
  }
}
