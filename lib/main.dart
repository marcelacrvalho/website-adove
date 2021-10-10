import 'package:adove/modules/home/bindings/home.dart';
import 'package:adove/routes/app_pages.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme/theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Adove',
      debugShowCheckedModeBanner: false,
      theme: webThemeData,
      initialRoute: Routes.kHome,
      getPages: WebPages.routes,
      initialBinding: HomeBinding(),
      defaultTransition: Transition.rightToLeftWithFade,
    ),
  );
}
