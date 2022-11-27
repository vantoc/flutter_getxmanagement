import 'package:get/get.dart';

class GetxUniqueController extends GetxController {
  var count = 0;

  void increment() {
    update(['txtCount']);
  }
}
