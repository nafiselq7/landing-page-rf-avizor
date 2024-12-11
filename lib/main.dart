import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rf_avizor_landing_page/app/components/notfound.dart';
import 'package:rf_avizor_landing_page/app/controllers/route_controller_controller.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/routes/app_pages.dart';

void main() {
  setPathUrlStrategy();
  Get.put(RouteControllerController(), permanent: true);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      enableLog: true,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const NotFound(),
      ),
    ),
  );
}
