import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class AuthViewHeader extends StatelessWidget {
  const AuthViewHeader(
      {super.key, required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.styleSemiBold32(),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: AppStyles.styleRegular16(),
          ),
        ],
      ),
    );
  }
}
