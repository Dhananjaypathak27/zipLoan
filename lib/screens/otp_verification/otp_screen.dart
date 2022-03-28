import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';
import 'package:ziploan/screens/otp_verification/components/body.dart';

import '../../constants/color_constants.dart';

class OtpScreen extends StatelessWidget {
   OtpScreen({Key? key}) : super(key: key);
  final zipLoanController = Get.find<ZipLoanController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      backgroundColor: AppColors.orangeBg,
      body: Body(),
    );
  }
}
