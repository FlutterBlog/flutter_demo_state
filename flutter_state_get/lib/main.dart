import 'package:flutter/material.dart';
import 'package:flutter_state_get/common/bindings/app_bindings.dart';
import 'package:flutter_state_get/route/app_pages.dart';
import 'package:get/get.dart';

// void main() => runApp(GetMaterialApp(home: HomeGetXPage()));

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AppBindings(),
    );
  }
}
