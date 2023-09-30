import 'package:flutter_woo_commerce_getx_learn/pages/system/login/index.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/system/splash/index.dart';
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
    GetPage(
      name: RouteNames.splash,
      page: () => const SplashPage(),
    ),
  ];
}
