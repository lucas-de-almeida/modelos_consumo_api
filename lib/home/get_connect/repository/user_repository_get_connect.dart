import 'package:consumindo_api/model/user_model.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:consumindo_api/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient
        .get('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
            decoder: (body) {
      if (body is List) {
        return body.map<UserModel>((e) => UserModel.fromMap(e)).toList();
      }
      return null;
    });
    if (response.hasError) {
      //if(response.statusCode==500)
      throw Exception('erro');
    }
    return response.body;
  }
}
