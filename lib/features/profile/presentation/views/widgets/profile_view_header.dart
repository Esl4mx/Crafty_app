import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class ProfileViewHeader extends StatelessWidget {
  const ProfileViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            backgroundImage: AssetImage(Assets.imagesAppLogo),
            radius: 50,
          ),
          const SizedBox(height: 12),
          Text("Eslam Saied", style: AppStyles.styleMedium24()),
          Text("eslamsaied836@gmail.com", style: AppStyles.styleRegular14()),
        ],
      ),
    );
  }
}
