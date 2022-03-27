
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'constants/color_constants.dart';

class Themes{
    static final lightTheme = ThemeData(
        colorScheme: const ColorScheme.light(
            primary: AppColors.lavender,
            onPrimary: Colors.black,
            secondary: AppColors.spaceBlue,
            onSecondary: AppColors.spaceCadet,
            background: AppColors.babyPink,
        ),
    );

    static final darkTheme = ThemeData(
        colorScheme: const ColorScheme.dark(
            primary: AppColors.spaceBlue,
            secondary: AppColors.burgundy,
            onSecondary: AppColors.spaceCadet,
            background: AppColors.spaceCadet,
        ));



    static const whiteTextBold= TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    );

    static const whiteTextNormal= TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );

    static const blackTextNormal= TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );

    static final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    static final focusedPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(5),
      ),
    );
}