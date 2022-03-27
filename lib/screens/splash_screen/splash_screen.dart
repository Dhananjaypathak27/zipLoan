import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';
import 'package:ziploan/screens/splash_screen/components/body.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final mainController = Get.find<ZipLoanController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body());
  }
}



