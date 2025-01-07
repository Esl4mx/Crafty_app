import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/check_box_section.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/login_view_form_section.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/login_view_header.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginViewHeader(),
            const LoginViewFormSection(),
            const SizedBox(
              height: 12,
            ),
            const CheckBoxSection(),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {},
                child: Text(
                  "Sign in ",
                  style:
                      AppStyles.styleSemiBold16().copyWith(color: Colors.white),
                )),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
                buttonColor: const Color(0xffFFFFFF),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                        aspectRatio: 0.5,
                        child: Image.asset(Assets.imagesGoogleLogo)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign in with google",
                      style: AppStyles.styleMedium16(),
                    ),
                  ],
                )),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: AppStyles.styleRegular14()),
                  TextSpan(
                      text: "Sign Up for free",
                      style: AppStyles.styleMedium16()),
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
