import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(MyGetSateManagement());
// }

class MyGetSateManagement extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

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
              Obx(
                () => Text(
                  'Count value is $count',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  increment();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
