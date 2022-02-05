import 'package:get/get.dart';

import '../controllers/languange_choose_controller.dart';

class LanguangeChooseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguangeChooseController>(
      () => LanguangeChooseController(),
    );
  }
}
