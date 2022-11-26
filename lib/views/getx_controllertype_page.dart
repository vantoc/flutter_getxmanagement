import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_controllertype.dart';

class GetxControllerTypePage extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<MyController>(
                // init: MyController(),
                builder: (controller) {
                  // return Text(
                  //   'The value is ${controller.count}',
                  //   style: TextStyle(fontSize: 25),
                  // );

                  return Text(
                    'The value is ${myController.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  // phai khai bao o tren
                  myController.increment();

                  // if ionstance of controller not created at top
                  Get.find<MyController>().increment();
                },
                child: Text(
                  'Increment',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
