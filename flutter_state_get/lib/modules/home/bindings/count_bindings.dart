import 'package:get/get.dart';
import 'package:flutter_state_get/modules/home/controllers/count_controller.dart';

class CountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountController());
  }
}
