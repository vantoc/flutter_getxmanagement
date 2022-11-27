import 'package:get/get.dart';

class GetxLifecycleController extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task');
  }

// su dung init cho nay se khong can initState trong page
  @override
  void onInit() {
    // TODO: implement onInit
    print('init Called');
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
