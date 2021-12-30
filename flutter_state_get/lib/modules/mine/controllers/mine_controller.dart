import 'package:get/get.dart';
import 'dart:math';

class MineController extends GetxController {
  //Mark: -
  var userName = "YUECHEN".obs;

  randomName() {
    var rm = Random().nextInt(99);
    userName.value = "Random" + rm.toString();
  }

  resetName() {
    var rm = Random().nextInt(99);
    userName.value = "Default" + rm.toString();
  }
}
