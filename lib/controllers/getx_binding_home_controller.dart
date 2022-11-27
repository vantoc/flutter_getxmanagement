import 'package:get/get.dart';

class GetxBindingHomeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
