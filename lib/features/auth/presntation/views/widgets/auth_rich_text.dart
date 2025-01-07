import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/auth/presntation/views/signup_view.dart';
import 'package:flutter/material.dart';

class AuthRichText extends StatelessWidget {
  const AuthRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.onTap,
  });
  final String firstText, secondText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: firstText, style: AppStyles.styleRegular14()),
          TextSpan(text: secondText, style: AppStyles.styleMedium16()),
        ])),
      ),
    );
  }
}
