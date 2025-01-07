import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleMedium16() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleSemiBold16() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleBold16() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleRegular24() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 24,
      fontWeight: FontWeight.normal,
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
      color: Color(0xff101817),
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleBold24() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleRegular32() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 32,
      fontWeight: FontWeight.normal,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleMedium32() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 32,
      fontWeight: FontWeight.w500,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleSemiBold32() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 32,
      fontWeight: FontWeight.w600,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleBold32() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleRegular14() {
    return const TextStyle(
      color: Color(0xff828A89),
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontFamily: "Switzer",
    );
  }

  static TextStyle styleMedium14() {
    return const TextStyle(
      color: Color(0xff101817),
      fontSize: 14,
      fontWeight: FontWeight.w500,
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
