import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/get_view_widget_controller.dart';

class GetViewAndGetWidgetPage extends GetView<CountController> {
  // co the su dung GetWidget thay the
  @override
  Widget build(BuildContext context) {
    // Get.put(CountController());
    Get.create(() => CountController()); // di voi GetWidget

    return GetMaterialApp(
      title: "GetView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetView"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The values is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
