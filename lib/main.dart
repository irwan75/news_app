import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/services/routes/app_pages.dart';
import 'generated/locales.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Application",
      translationsKeys: AppTranslation.translations,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
