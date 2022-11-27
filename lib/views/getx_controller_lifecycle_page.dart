import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_controller_lifecycle.dart';

class GetxLifecycleControllerPage extends StatelessWidget {
  GetxLifecycleController mycontroller = GetxLifecycleController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Controller Lifecycle",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Controller Lifecycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<GetxLifecycleController>(
                // initState: (data) => mycontroller.increment(),
                // dispose: (_) => mycontroller.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    'The value is ${mycontroller.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
