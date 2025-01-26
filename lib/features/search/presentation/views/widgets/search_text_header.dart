import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class SearchTextHeader extends StatelessWidget {
  const SearchTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Recent Search", style: AppStyles.styleMedium24()),
        const Spacer(),
        InkWell(
            onTap: () {},
            child: Text("Clear", style: AppStyles.styleRegular14()))
      ],
    );
  }
}
