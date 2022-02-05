import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/view/widgets/text_divider_below.dart';

import '../controllers/view_news_controller.dart';

class ViewNewsView extends GetView<ViewNewsController> {
  @override
  Widget build(BuildContext context) {
    final imagePreview = new Stack(
      children: [
        Container(
          width: Get.width,
          height: 200,
          child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://asset.kompas.com/crops/r-hyUt8An8hPheLkiTQFeNICCow=/0x0:0x0/750x500/data/photo/2020/04/30/5eaae521d2e3b.jpg"),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50),
          ),
          margin: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Get.back(),
            color: Colors.white,
          ),
        ),
      ],
    );

    final authorAndDate = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(controller.data.publishedAt!
              .replaceAll("T", " ")
              .replaceAll("Z", "")),
          Text(controller.data.author!),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.white,
          child: ListView(
            children: [
              imagePreview,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    authorAndDate,
                    Text(
                      controller.data.title!,
                      textAlign: TextAlign.center,
                    ),
                    Text(controller.data.content!),
                    TextDividerBelow(text: "URL"),
                    GestureDetector(
                      onTap: () =>
                          controller.openLauncherURL(controller.data.url!),
                      child: Text(
                        controller.data.url!,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextDividerBelow(text: "Source"),
                    Text(controller.data.source!.name!),
                    // TextContainer(title: "URL", color: Colors.blue),
                    // TextContainer(title: "Sumber", color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
