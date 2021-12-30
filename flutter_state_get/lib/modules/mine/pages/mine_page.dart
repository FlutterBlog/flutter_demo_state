import 'package:flutter/material.dart';
import 'package:flutter_state_get/modules/mine/controllers/mine_controller.dart';
import 'package:get/get.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(context) {
    /// 直接使用Get.find()找到对应的GetxController使用。
    final controller = Get.find<MineController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Mine"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'User Name:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Obx(
              () => Text(
                "${controller.userName}",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Random',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    controller.randomName();
                  },
                ),
                TextButton(
                  child: Text(
                    'Default',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    controller.resetName();
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
