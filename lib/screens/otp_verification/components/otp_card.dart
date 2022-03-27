import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:ziploan/components/custom_button.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';
import 'package:ziploan/themes.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class OTPCard extends StatelessWidget {
  OTPCard({Key? key}) : super(key: key);
  final zipLoanController = Get.find<ZipLoanController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20)),
      ),
      elevation: 5,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Pinput(
              defaultPinTheme: Themes.defaultPinTheme,
            focusedPinTheme: Themes.focusedPinTheme,
    validator: (s) {
    return s == '1234' ? zipLoanController.successMessage() : 'Pin is incorrect';
    },
    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    showCursor: true,
    onCompleted: (pin) => print(pin),
    ),
            ),
    SizedBox(
              height: 100,
            ),
            CustomButton(
              text: "Continue",
              press: continueBtnClicked,
            ),
          ],
        ),
      ),
    );
  }

  continueBtnClicked() {
    zipLoanController.mobileContinueBtnClicked();
  }
}
