import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class LoginViewHeader extends StatelessWidget {
  const LoginViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: AppStyles.styleSemiBold32(),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Welcome Back! Please Enter Your Details.",
            style: AppStyles.styleRegular16(),
          ),
        ],
      ),
    );
  }
}
