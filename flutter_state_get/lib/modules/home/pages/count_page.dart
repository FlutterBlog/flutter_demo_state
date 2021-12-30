import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_state_get/modules/home/pages/other_page.dart';
import 'package:flutter_state_get/modules/home/controllers/count_controller.dart';

class CountPage extends StatelessWidget {
  @override
  Widget build(context) {
    // 通过代码，手动将CounterController实例化，后续可以通过Get.find获取
    // final controller = Get.put(CountController());

    // 通过Route跳转，自动将CounterController实例化，后续可以通过Get.find获取
    final controller = Get.find<CountController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Count"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text(
                'Goto',
                style: Theme.of(context).textTheme.headline5,
              ),
              onPressed: () {
                Get.to(OtherPage());
              },
            ),
            Text(
              'Count Num:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Obx(
              () => Text(
                "${controller.count}",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Add',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    controller.increment();
                  },
                ),
                TextButton(
                  child: Text(
                    'Remove',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    controller.decrement();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
