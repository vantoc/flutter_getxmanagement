import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dependency_injection_controller.dart';

class DependencyInjectionPage extends StatelessWidget {
  DependencyInjectController myController =
      Get.put(DependencyInjectController(), tag: 'instancel', permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dependency injection",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dependency injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //// instance will created with tag
                    //Get.find<DependencyInjectController>()(tag: 'instance');

                    Get.find<DependencyInjectController>();

                    Get.find<DependencyInjectController>().incrementCounter;
                  },
                  child: Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}
