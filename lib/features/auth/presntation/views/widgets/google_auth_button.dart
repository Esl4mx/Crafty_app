import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:flutter/material.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
        buttonColor: const Color(0xffFFFFFF),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
                aspectRatio: 0.5, child: Image.asset(Assets.imagesGoogleLogo)),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppStyles.styleMedium16(),
            ),
          ],
        ));
  }
}
