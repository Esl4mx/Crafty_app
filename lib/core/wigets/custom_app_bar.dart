import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.leading,
      this.title,
      this.trailing,
      required this.leadingOnTap,
      this.trailingOnTap});
  final Widget leading;
  final String? title;
  final Widget? trailing;
  final VoidCallback leadingOnTap;
  final VoidCallback? trailingOnTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: 12,
                left: 24,
              ),
              child: CutomAppBarLeadingTrailing(
                  onTap: leadingOnTap, child: leading)),
          const Spacer(),
          title != null
              ? Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(title!, style: AppStyles.styleMedium24()))
              : const SizedBox(),
          const Spacer(),
          trailing != null
              ? Container(
                  margin: const EdgeInsets.only(top: 12, right: 24),
                  child: CutomAppBarLeadingTrailing(
                    onTap: trailingOnTap ?? () {},
                    child: trailing!,
                  ),
                )
              : const SizedBox(
                  width: 60,
                ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 60);
}
