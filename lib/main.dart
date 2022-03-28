import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';
import 'package:ziploan/screens/splash_screen/splash_screen.dart';
import 'package:ziploan/themes.dart';
import 'package:ziploan/ziploan_binding.dart';

import 'constants/keys.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final zipLoanController = Get.put(ZipLoanController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      initialBinding: ZiploanBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: SplashScreen(),
    );
  }
}
