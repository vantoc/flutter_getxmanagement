import 'package:flutter_getxmanagement/services/getx_service.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  await initService();
  runApp(GetXServicePage());
}

Future<void> initService() async {
  print('starting services...');
  await Get.putAsync(() async => await Service());
  print('All Service started');
}

class GetXServicePage extends StatelessWidget {
  const GetXServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Service",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
                child: Text('increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
