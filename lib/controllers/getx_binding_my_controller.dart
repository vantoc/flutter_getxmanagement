import 'package:get/get.dart';

class GetxBindingMyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
