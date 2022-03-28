import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:ziploan/components/custom_button.dart';
import 'package:ziploan/constants/keys.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';
import 'package:ziploan/themes.dart';

class OTPCard extends StatelessWidget {
  OTPCard({Key? key}) : super(key: key);
  final zipLoanController = Get.find<ZipLoanController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20)),
      ),
      elevation: 5,
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Pinput(
                defaultPinTheme: Themes.defaultPinTheme,
                focusedPinTheme: Themes.focusedPinTheme,
                validator: (s) {
                  return s == '1234'
                      ? zipLoanController.successMessage()
                      : kPinIsInCorrect;
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              text: kContinueTxt,
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
