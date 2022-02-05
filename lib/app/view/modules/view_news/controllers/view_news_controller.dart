import 'package:get/get.dart';
import 'package:news_app/app/services/dependency_injection/services_d_injection.dart';
import 'package:news_app/app/shared/data/models/api/response/list_news_response.dart';

class ViewNewsController extends GetxController {
  ServiceDInjection serviceDInjection = new ServiceDInjection();
  late ListNewsResponse data = new ListNewsResponse();

  @override
  void onInit() {
    super.onInit();
    data = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void openLauncherURL(String url) async {
    var result = await serviceDInjection.launcherURL!.launchURL(url);
    (result == false) ? print("") : print("");
  }
}
