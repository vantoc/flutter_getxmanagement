import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/obx_and_custome_class_stuident.dart';

// void main() {
//   runApp(MyGetSateManagement());
// }

class MyGetSateManagement extends StatelessWidget {
//  var stuident = Student();

  // //for make the entire class obserable
  final stuident = Student(name: 'tome', age: 25).obs;

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
              // Obx(
              //   () => Text(
              //     'Name is ${stuident.name.value}', // for Individuals variables RX
              //     style: TextStyle(fontSize: 25),
              //   ),
              // ),

              Obx(
                () => Text(
                  'Name is ${stuident.value.name}', // for Individuals variables RX
                  style: TextStyle(fontSize: 25),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Upper'),
                onPressed: () {
                  //  stuident.name.value = stuident.name.value.toUpperCase(); // for Individuals variables RX

                  // // entire class observable

                  stuident.update((std) {
                    std?.name = std.name.toString().toUpperCase();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
