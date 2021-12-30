import 'package:flutter/material.dart';
import 'package:flutter_state_get/route/app_pages.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          TextButton(
            child: Text(
              'Mine',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onPressed: () {
              Get.toNamed(Routes.MINE);
            },
          ),
          TextButton(
            child: Text(
              'News',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onPressed: () {
              Get.toNamed(Routes.NEWS);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            TextButton(
              child: Text(
                'Goto',
                style: Theme.of(context).textTheme.headline5,
              ),
              onPressed: () {
                // Get.to(CountPage());
                Get.toNamed(Routes.COUNT);
              },
            ),
          ],
        ),
      ),
    );
  }
}
