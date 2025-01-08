import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        "Welcome,",
        style: AppStyles.styleRegular13(),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        "Eslam Saloma",
        style: AppStyles.styleMedium16(),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: CutomAppBarLeadingTrailing(
        onTap: () {},
        child: Image.asset(
          Assets.imagesNotifications,
        ),
      ),
    );
  }
}
