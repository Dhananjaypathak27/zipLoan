import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziploan/constants/keys.dart';
import 'package:ziploan/themes.dart';

import '../../../components/custom_button.dart';
import '../../../controllers/ziploan_controller.dart';

class MobileCard extends StatelessWidget {
  MobileCard({Key? key}) : super(key: key);

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
            Obx(
              () => Flexible(
                child: TextFormField(
                  onChanged: (text) {
                    zipLoanController.numberErrorText(text);
                  },
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: zipLoanController.numberEditTextController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(width: 1.0),
                      ),
                      counter: Offstage(),
                      hintText: kMobileNumber,
                      labelText: kMobileNumber,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 3.0),
                      ),
                      errorText: zipLoanController.numberError.value),
                ),
                fit: FlexFit.loose,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              kOtpWillBeSent,
              style: Themes.blackTextNormal,
            ),
            Obx(() => Flexible(
                  fit: FlexFit.loose,
                  child: CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        kByClickingOn,
                        style: Themes.blackTextNormal,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: zipLoanController.checkBoxCheck.value,
                      onChanged: (b) {
                        zipLoanController.updateCheckBoxState(b);
                      }),
                )),
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
