import 'package:flutter_state_get/modules/news/models/news_model.dart';
import 'package:flutter_state_get/modules/news/net/news_net.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  //Mark: -
  var isLoading = true;
  List<NewsModel> dataSource = [];

  @override
  void onInit() {
    requestData();
    super.onInit();
  }

  requestData() async {
    try {
      Map<String, dynamic> map = await HttpService.getNews();
      List list = map["result"];

      dataSource = List<NewsModel>.from(
        list.map((jsonMap) => NewsModel.fromJson(jsonMap)),
      );
      print(dataSource);

      dataSource.removeAt(0);
      update();
    } catch (e) {} finally {
      isLoading = false;
      update();
    }
  }
}
