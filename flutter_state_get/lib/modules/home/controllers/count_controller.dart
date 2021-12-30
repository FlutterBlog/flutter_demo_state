import 'package:get/get.dart';

class CountController extends GetxController {
  //Mark: -
  var count = 0.obs;

  //Mark: -
  increment() => count++;
  decrement() => count--;

  //Mark: - 生命周期

  //初始化
  @override
  void onInit() {
    /// 每次`name`变化时调用。
    ever(count, (callback) => null);

    /// 每次监听多个值变化时调用。
    everAll([count], (callback) => null);

    /// 只有在变量第一次被改变时才会被调用
    once(count, (callback) => null);

    /// 场景：变量频繁改变，如果用户多次输入、多次点击等。 防DDos - 当变量停止变化1秒后调用，
    /// 例如：搜索功能。用户输入完整单词后再执行搜索操作，而不是用户每输入一个字符就要进行一次操作
    debounce(count, (callback) => null, time: const Duration(seconds: 1));

    /// 忽略指定时间内变量的所有变化
    interval(count, (callback) => null, time: const Duration(seconds: 1));

    super.onInit();
  }

  //加载完
  @override
  void onReady() {
    super.onReady();
  }

  //释放
  @override
  void onClose() {
    super.onClose();
  }
}

// ignore: camel_case_types
class CountController_o extends GetxController {
  //Mark: -
  RxInt count1 = RxInt(0);
  var count2 = Rx<int>(0);

  increment1() => count1++;
  decrement1() => count1--;

  increment2() => count2.value++;
  decrement2() => count2.value--;
}
