import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class SectionsHeader extends StatelessWidget {
  const SectionsHeader({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyles.styleSemiBold16(),
          ),
          const Spacer(),
          GestureDetector(
            onTap: ontap,
            child: Text(
              "View All",
              style: AppStyles.styleRegular13()
                  .copyWith(color: const Color(0xffF2A666)),
            ),
          )
        ],
      ),
    );
  }
}
