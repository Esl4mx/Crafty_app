import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.title});

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(aspectRatio: 1, child: Image.asset(image)),
        const SizedBox(
          height: 40,
        ),
        Text(title,
            textAlign: TextAlign.center, style: AppStyles.styleMedium24()),
      ],
    );
  }
}
