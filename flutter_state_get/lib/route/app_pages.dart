import 'package:get/get.dart';

import 'package:flutter_state_get/modules/home/pages/count_page.dart';
import 'package:flutter_state_get/modules/home/pages/home_page.dart';
import 'package:flutter_state_get/modules/home/pages/other_page.dart';
import 'package:flutter_state_get/modules/mine/pages/mine_page.dart';
import 'package:flutter_state_get/modules/news/pages/news_page.dart';

import 'package:flutter_state_get/modules/home/bindings/count_bindings.dart';
import 'package:flutter_state_get/modules/mine/controllers/mine_controller.dart';
import 'package:flutter_state_get/modules/news/controllers/news_controller.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.MINE,
      page: () => MinePage(),
      binding: BindingsBuilder(() => {Get.lazyPut(() => MineController())}),
    ),
    GetPage(
      name: Routes.NEWS,
      page: () => NewsPage(),
      binding: BindingsBuilder(() => {Get.lazyPut(() => NewsController())}),
    ),
    GetPage(
      name: Routes.COUNT,
      page: () => CountPage(),
      binding: CountPageBinding(),
      children: [
        GetPage(
          name: Routes.OTHER,
          page: () => OtherPage(),
        ),
      ],
    ),
  ];
}
