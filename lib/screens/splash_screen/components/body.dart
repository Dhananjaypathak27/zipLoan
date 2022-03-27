import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final zipLoanController = Get.find<ZipLoanController>();
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      duration: 5,
      splash: 'assets/images/splash_logo.png',
      nextScreen: moveToNextScreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }

  Widget moveToNextScreen(){
    return zipLoanController.moveToPhoneNumberScreen();
  }
}