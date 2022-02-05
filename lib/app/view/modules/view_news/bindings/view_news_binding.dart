import 'package:get/get.dart';

import '../controllers/view_news_controller.dart';

class ViewNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewNewsController>(
      () => ViewNewsController(),
    );
  }
}
