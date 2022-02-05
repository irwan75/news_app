import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/services/routes/app_pages.dart';
import 'package:news_app/app/view/widgets/card_news.dart';
import 'package:news_app/app/view/widgets/form_search.dart';
import '../controllers/home_controller.dart';
import 'card_scroll_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () => Get.toNamed(Routes.LANGUANGE_CHOOSE),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FormSearch(
                textEditingController: controller.textEditingController,
                onTap: () {
                  print(controller.textEditingController.text);
                },
                hintText: "Tulis Keyword Pencarian",
              ),
              Text("Top Hotline News"),
              Obx(
                () => controller.news.isEmpty
                    ? Center(
                        child: Text("Nothing Data"),
                      )
                    : Stack(
                        children: <Widget>[
                          CardScrollWidget(
                              controller.news, controller.currentPage.value),
                          Positioned.fill(
                            child: PageView.builder(
                              itemCount: controller.news.length,
                              controller: controller.pageController,
                              reverse: true,
                              itemBuilder: (context, index) {
                                return Container();
                              },
                            ),
                          )
                        ],
                      ),
              ),
              Text("Universal News"),
              Obx(
                () => controller.news.isEmpty
                    ? Center(
                        child: Text("Nothing Data"),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.news.length,
                        itemBuilder: (context, index) {
                          return CardNews(
                            data: controller.news[index],
                            onTap: () => Get.toNamed(Routes.VIEW_NEWS,
                                arguments: controller.news[index]),
                          );
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
