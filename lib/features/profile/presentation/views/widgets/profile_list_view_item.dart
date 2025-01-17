import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/profile/presentation/view_models/profile_items_model.dart';
import 'package:flutter/material.dart';

class ProfileListViewItem extends StatelessWidget {
  const ProfileListViewItem({
    super.key,
    required this.profileItemsModel,
  });
  final ProfileItemsModel profileItemsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: profileItemsModel.onTap,
      child: Card(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        color: AppColors.containerColor,
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Image.asset(
            profileItemsModel.image,
            scale: 4,
          ),
          title: Text(
            profileItemsModel.title,
            style: AppStyles.styleSemiBold16(),
          ),
        ),
      ),
    );
  }
}
