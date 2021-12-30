import 'package:get/get.dart';
import 'package:flutter_state_get/modules/home/controllers/count_controller.dart';
import 'package:flutter_state_get/modules/mine/controllers/mine_controller.dart';

/// 所有的Binding层
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountController());
    Get.lazyPut(() => MineController());
  }
}
