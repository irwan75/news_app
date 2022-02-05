import 'package:get/get.dart';
import 'package:news_app/app/view/modules/home/bindings/home_binding.dart';
import 'package:news_app/app/view/modules/home/views/home_view.dart';
import 'package:news_app/app/view/modules/languange_choose/bindings/languange_choose_binding.dart';
import 'package:news_app/app/view/modules/languange_choose/views/languange_choose_view.dart';
import 'package:news_app/app/view/modules/view_news/bindings/view_news_binding.dart';
import 'package:news_app/app/view/modules/view_news/views/view_news_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LANGUANGE_CHOOSE,
      page: () => LanguangeChooseView(),
      binding: LanguangeChooseBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_NEWS,
      page: () => ViewNewsView(),
      binding: ViewNewsBinding(),
    ),
  ];
}
