import 'package:adove/modules/contact/controllers/contact.dart';
import 'package:get/get.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(() => ContactController());
  }
}