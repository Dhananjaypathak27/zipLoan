import 'package:flutter/material.dart';
import 'package:ziploan/constants/keys.dart';
import 'package:ziploan/screens/mobile_verification/components/mobile_card.dart';
import 'package:ziploan/themes.dart';

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
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(kWelcomeToZipLoan,style: Themes.whiteTextBold,),
                    const SizedBox(height: 20,),
                    const Text(kSignUpLoginToApply,style: Themes.whiteTextNormal,),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),

              MobileCard(),
            ],
          ),
        ),
      ),
    );
  }
}
