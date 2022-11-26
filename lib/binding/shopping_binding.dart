import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../controllers/shopping_controller.dart';

class ShoppingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShoppingController());
    Get.put(CartController());
  }
}
