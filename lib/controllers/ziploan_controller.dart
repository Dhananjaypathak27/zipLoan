import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ziploan/constants/keys.dart';
import 'package:ziploan/screens/mobile_verification/mobile_verification_screen.dart';
import 'package:ziploan/screens/otp_verification/otp_screen.dart';

class ZipLoanController extends GetxController {
  final number = ''.obs;
  final checkBoxCheck = false.obs;
  final numberError = "please enter mobile number".obs;
  final numberEditTextController = TextEditingController();
  final continueBtnEnableCheckMobile = false.obs;
  final otpTxt = "".obs;

  Widget moveToPhoneNumberScreen() {
    return MobileVerificationScreen();
  }

  updateCheckBoxState(bool? value){
    checkBoxCheck(value);
    continueBtnEnableCheckMobile(enableDisableContinueMobileBtn());
  }

  updateOTPText(String otp){
    otpTxt(otp);
  }

  numberErrorText(String number) {
    numberError(null);
    if (number.isEmpty || number == "") {
      numberError(kPleaseEnterMobileNumber);
    }  else if (number[0] == "1" ||
        number[0] == "2" ||
        number[0] == "3" ||
        number[0] == "4" ||
        number[0] == "5" ||
        number[0] == "6" ||
        number[0] == "0") {
      numberError(kPleaseEnterValidMobile);
    }
    else if (number.length <10) {
      numberError(kPleaseEnterValidMobile);
    }
    else {
      numberError("");
    }
  }
  
  successMessage(){
    Get.snackbar(kCongratulation, kOtpVerified,snackPosition: SnackPosition.BOTTOM);
  }

  bool enableDisableContinueMobileBtn(){
    if(checkBoxCheck.isTrue && numberError.isEmpty){
      return true;
    }
    return false;
  }

  mobileContinueBtnClicked(){
    if(checkBoxCheck.isTrue){
      Get.to(OtpScreen());
    }
    else{
      Get.snackbar(kAttention,kPleaseAccept,
          snackPosition: SnackPosition.BOTTOM);
    }

  }

  @override
  void dispose() {
    super.dispose();
    numberEditTextController.dispose();
  }


}
