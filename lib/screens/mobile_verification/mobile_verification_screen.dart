import 'package:flutter/material.dart';
import 'package:ziploan/constants/color_constants.dart';
import 'package:ziploan/screens/mobile_verification/components/body.dart';

class MobileVerificationScreen extends StatelessWidget {
  const MobileVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.orangeBg,
      body: Body(),
    );
  }
}


