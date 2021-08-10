import 'package:consumindo_api/home/get_connect/get_connect_controller.dart';
import 'package:consumindo_api/home/get_connect/repository/user_repository_get_connect.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:consumindo_api/shared/rest_client.dart';
import 'package:get/get.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<IUserRepository>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
