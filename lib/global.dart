import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'common/index.dart';
import 'package:get/get.dart';

class Global {
  static Future<void> init() async {
    // WidgetsFlutterBinding.ensureInitialized();
    //splash
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // 工具类
    Loading();

    await Storage().init();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});

    Get.put<WPHttpService>(WPHttpService());
  }
}
