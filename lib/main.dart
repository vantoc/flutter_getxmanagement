import 'package:flutter/material.dart';
import 'package:flutter_getxmanagement/binding/shopping_binding.dart';
import 'package:get/get.dart';
import 'views/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: "/", page: () => ShoppingPage(), binding: ShoppingBinding())
      ],
      //  home: ShoppingPage(),
      initialRoute: '/',
    );
  }
}
