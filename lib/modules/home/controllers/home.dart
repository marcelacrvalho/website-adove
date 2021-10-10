import 'package:adove/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  toRegisterView() {
    Get.toNamed(Routes.kRegister);
  }
}
