import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_state_get/modules/home/controllers/count_controller.dart';

class OtherPage extends StatelessWidget {
  /// 直接使用Get.find()找到对应的GetxController使用。
  final controller = Get.find<CountController>();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Other Page',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            Text(
              'Count Num:${controller.count}',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
