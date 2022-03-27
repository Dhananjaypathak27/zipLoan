import 'package:flutter/material.dart';
import 'package:ziploan/screens/otp_verification/components/otp_card.dart';

import '../../../themes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text("OTP Verification",style: Themes.whiteTextBold,),
                    const SizedBox(height: 20,),
                    const Text("Enter the OTP sent to your mobile number",style: Themes.whiteTextNormal,),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              OTPCard()

            ],
          ),
        ),
      ),
    );
  }
}
