import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/res/images.dart';

import '../controllers/languange_choose_controller.dart';

class LanguangeChooseView extends GetView<LanguangeChooseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languange News'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listIconLanguange.length,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  width: 60,
                  height: 60,
                  child: listIconLanguange[index],
                ),
                SizedBox(width: 10),
                Text("Sunat"),
              ],
            ),
          );
        },
      ),
    );
  }
}
