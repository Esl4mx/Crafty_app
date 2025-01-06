import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
    required this.onPressed,
    required this.gestureOnPressed,
  });
  final VoidCallback onPressed;
  final VoidCallback gestureOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: onPressed,
            child: Text(
              "Skip",
              style: AppStyles.styleRegular16()
                  .copyWith(color: const Color(0xff828A89)),
            )),
        const Spacer(),
        GestureDetector(
          onTap: gestureOnPressed,
          child: Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primaryColor),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
