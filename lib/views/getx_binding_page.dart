import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/getx_binding_all_controller.dart';
import '../controllers/getx_binding_my_controller.dart';

class GetxBindingPage extends StatelessWidget {
  const GetxBindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControlerBinding(),
      title: "Binding ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<GetxBindingMyController>().count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<GetxBindingMyController>().increment();
                },
                child: Text('Increment'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  //Get.to(Home());

                  Get.toNamed('/home');

                  //Get.to(Home(),binding: GetxBindingMyController)
                },
                child: Text('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
