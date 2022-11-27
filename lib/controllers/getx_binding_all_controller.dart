import 'package:get/get.dart';

import 'getx_binding_home_controller.dart';
import 'getx_binding_my_controller.dart';

class AllControlerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GetxBindingHomeController());
    Get.lazyPut(() => GetxBindingMyController());
  }
}
