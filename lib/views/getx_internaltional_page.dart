import 'package:flutter_getxmanagement/services/message_international.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/getx_internationalization_controller.dart';

class InternaltionalPage extends StatelessWidget {
  GetXInternationalController mycontroller =
      Get.put(GetXInternationalController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 25, color: Colors.purple),
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.changeLanguage('chao', 'VN');
                  },
                  child: Text('Viet Nam')),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.changeLanguage('fr', 'FR');
                  },
                  child: Text('French')),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.changeLanguage('en', 'US');
                  },
                  child: Text('English'))
            ],
          ),
        ),
      ),
    );
  }
}
