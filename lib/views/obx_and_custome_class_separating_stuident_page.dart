import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_state_controller.dart';

// void main() {
//   runApp(MyGetSateManagement());
// }

class MyGetSateManagement extends StatelessWidget {
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
              // Obx(
              //   () => Text(
              //     'Name is ${myController.student.name}', // for Individuals variables RX
              //     style: TextStyle(fontSize: 25),
              //   ),
              // ),

              Obx(
                () => Text(
                  'Name is ${myController.student.value.name}', // for Individuals variables RX
                  style: TextStyle(fontSize: 25),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Upper'),
                onPressed: () {
                  // myController
                  //     .convertToUpperCase(); // for Individuals variables are observable

                  // // entire class observable

                  myController.convertUpperCase();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
