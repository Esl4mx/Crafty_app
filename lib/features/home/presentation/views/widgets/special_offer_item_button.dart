import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class SpecialOfferItemButton extends StatelessWidget {
  const SpecialOfferItemButton(
      {super.key, required this.btnText, this.btnOnPressed});
  final String btnText;
  final VoidCallback? btnOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor)),
        onPressed: btnOnPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(
            btnText,
            style: AppStyles.styleRegular13().copyWith(
              color: Colors.white,
            ),
          ),
        ));
  }
}
