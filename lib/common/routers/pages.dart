import 'package:flutter_woo_commerce_getx_learn/pages/system/login/bindings.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/system/login/view.dart';
import 'package:get/get.dart';
import 'index.dart';

class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
