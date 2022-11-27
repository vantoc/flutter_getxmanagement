import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_unique_id_controller.dart';

class GetxUniquePage extends StatelessWidget {
  GetxUniqueController mycontroller = Get.put(GetxUniqueController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique ID",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<GetxUniqueController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text(
                    'The value is ${controller.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<GetxUniqueController>(
                builder: (controller) {
                  return Text(
                    'The value is ${controller.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => mycontroller.increment(),
                child: Text('Increment'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
