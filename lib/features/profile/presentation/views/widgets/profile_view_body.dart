import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/profile/presentation/views/widgets/profile_list_view.dart';
import 'package:crafty_app/features/profile/presentation/views/widgets/profile_list_view_item.dart';
import 'package:crafty_app/features/profile/presentation/views/widgets/profile_view_header.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileViewHeader(),
          const SizedBox(
            height: 24,
          ),
          const ProfileListView(),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "Log Out",
                style: AppStyles.styleMedium16().copyWith(color: Colors.red),
              )),
        ],
      ),
    );
  }
}
