import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  _jumpToPage() {
    Get.offAllNamed(RouteNames.systemRegister);
    // 样式配置
    // if (ConfigService.to.isAlreadyOpen) {
    //   Get.offAllNamed(RouteNames.systemWelcome);
    // } else {
    //   Get.offAllNamed(RouteNames.stylesStylesIndex);
    // }
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();

    // 删除设备启动图
    FlutterNativeSplash.remove();
    _initData();
    // Get.to(const LoginQuickPage());
    _jumpToPage(); // 跳转界面
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
