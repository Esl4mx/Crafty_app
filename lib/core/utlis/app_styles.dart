import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16() {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleMedium24() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleSemiBold24() {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleSemiBold16() {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: "Switzer",
    );
  }
}

// double getResponsiveFontsize(BuildContext context, {required double fontsize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = fontsize * scaleFactor;
//   double lowerLimit = fontsize * 0.8;
//   double upperLimit = fontsize * 1.2;
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor(context) {
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < 800) {
//     return width / 550;
//   } else if (width < 1200) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }
