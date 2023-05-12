import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebaghar/utill/all_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AllRoutes.splashScreen,
      getPages: AllRoutes.routes,
      debugShowCheckedModeBanner: false,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}

