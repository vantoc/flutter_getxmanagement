import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main(List<String> args) async {
  await GetStorage.init();
  runApp(GetStoragePage());
}

class GetStoragePage extends StatelessWidget {
  var emailEdittingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetStorage & Email Validation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetStorage & Email Validation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEdittingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Write'),
                  onPressed: () {
                    if (GetUtils.isEmail(emailEdittingController.text)) {
                      storage.write('email', emailEdittingController.text);
                    } else {
                      Get.snackbar(
                          'InCorect Email', 'Provide email in valid format',
                          colorText: Colors.white,
                          backgroundColor: Colors.red,
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    print('The emial is ${storage.read('email')}');
                  },
                  child: Text('Read'))
            ],
          ),
        ),
      ),
    );
  }
}
