import 'package:get/get.dart';
import '../models/obx_and_custome_class_separating_stuident.dart';

class MyController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: 'Tom', age: 25).obs;

  void convertUpperCase() {
    student.update((std) {
      std?.name = std.name.toString().toUpperCase();
    });
  }
}
