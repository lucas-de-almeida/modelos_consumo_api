import 'package:consumindo_api/home/dio/dio_bindings.dart';
import 'package:consumindo_api/home/dio/dio_page.dart';
import 'package:consumindo_api/home/get_connect/get_connect_bindings.dart';
import 'package:consumindo_api/home/get_connect/get_connect_page.dart';
import 'package:consumindo_api/home/home_page.dart';
import 'package:consumindo_api/home/http/http_bindigns.dart';
import 'package:consumindo_api/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindigns(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => DioPage(),
              binding: DioBindings(),
            )
          ],
        ),
      ],
    );
  }
}
