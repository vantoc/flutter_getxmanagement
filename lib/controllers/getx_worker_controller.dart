import 'package:get/get.dart';

class GetXWorkerController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    ////called every time when the value of count variable changes
    ever(count, (_) => print(count));

    ////called every time when the value of any vatiable from the list changes
    everAll([count], (_) => print(count));

    ////Called only once when the variable value changes
    once(count, (_) => print(count));

    //// Change every time the user stops typing for 1 second
    debounce(
        count,
        (_) => print(
            'When the user stop typing for 1 sec the value of count will be printed'),
        time: Duration(seconds: 1));

    super.onInit();
  }
}
