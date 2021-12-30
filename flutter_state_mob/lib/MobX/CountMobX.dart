import 'package:mobx/mobx.dart';

part 'CountMobX.g.dart';

/// 自动生成命令
/// flutter packages pub run build_runner watch

// We expose this to be used throughout our project
class Counter = _Counter with _$Counter;

// Our store class
abstract class _Counter with Store {
  @observable
  int value = 1;

  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }
}
