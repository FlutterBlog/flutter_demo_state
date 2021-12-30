import 'package:flutter/material.dart';
import 'package:flutter_state_get/modules/news/controllers/news_controller.dart';
import 'package:flutter_state_get/modules/news/models/news_model.dart';
import 'package:get/get.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /// 直接使用Get.find()找到对应的GetxController使用。
    final controller = Get.find<NewsController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: GetBuilder<NewsController>(
        builder: (counter) {
          if (counter.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: counter.dataSource.length,
              itemBuilder: (_, index) {
                NewsModel newsModel = counter.dataSource[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        newsModel.itemCover,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          newsModel.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
