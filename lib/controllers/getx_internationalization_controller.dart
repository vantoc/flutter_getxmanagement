import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GetXInternationalController extends GetxController {
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}
