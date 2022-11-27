import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_worker_controller.dart';

class GetXWorkerPage extends StatelessWidget {
  GetXWorkerController myController = Get.put(GetXWorkerController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Workers",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Increment'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: (val) {
                    myController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
