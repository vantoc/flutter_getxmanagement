import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getbuilder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  GetBuilderController mycontroller = Get.put(GetBuilderController());

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
              GetBuilder<GetBuilderController>(
                init: GetBuilderController(),
                builder: (controller) {
                  return Text(
                    'The value is ${controller.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),

              //// su dung trong duong hop tao instace bang Get.Put
              // GetBuilder<GetBuilderController>(
              //   builder: (controller) {
              //     return Text(
              //       'The value is ${mycontroller.count}',
              //       style: TextStyle(fontSize: 25),
              //     );
              //   },
              // ),

              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //// if instance create on top by Get.Put()
                  mycontroller.increment();

                  //// if instance of controller init in GetBuilder
                  Get.find<GetBuilderController>().increment();
                },
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
