import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/index.dart';
import 'global.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          initialRoute: RouteNames.systemSplash,
          // initialRoute: RouteNames.stylesStylesIndex,
          getPages: RoutePages.list,
          navigatorObservers: [RoutePages.observer],
          // 样式
          theme: ConfigService.to.isDarkModel ? AppTheme.dark : AppTheme.light,

          // 多语言
          translations: Translation(), // 词典
          localizationsDelegates: Translation.localizationsDelegates, // 代理
          supportedLocales: Translation.supportedLocales, // 支持的语言种类
          locale: ConfigService.to.locale, // 当前语言种类
          fallbackLocale: Translation.fallbackLocale, // 默认语言种类

          debugShowCheckedModeBanner: false,

          // builder
          builder: (context, widget) {
            widget = EasyLoading.init()(context, widget); // EasyLoading 初始化

            // 不随系统字体缩放比例
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget,
            );
          },
        );
      },
    );
  }
}
