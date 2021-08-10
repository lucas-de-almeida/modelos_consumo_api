import 'package:consumindo_api/home/http/http.controller.dart';
import 'package:consumindo_api/home/http/repository/user_http_repository.dart';
import 'package:consumindo_api/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindigns implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
