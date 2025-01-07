import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:crafty_app/features/auth/presntation/views/signup_view.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/auth_rich_text.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/check_box_section.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/google_auth_button.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/login_view_form_section.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 88,
            ),
            const AuthViewHeader(
              title: "Welcome Back",
              subtitle: "Welcome Back! Please Enter Your Details.",
            ),
            Form(
              key: formKey,
              child: const LoginViewFormSection(),
            ),
            const SizedBox(
              height: 12,
            ),
            const CheckBoxSection(),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: Text(
                  "Sign in ",
                  style:
                      AppStyles.styleSemiBold16().copyWith(color: Colors.white),
                )),
            const SizedBox(
              height: 16,
            ),
            GoogleAuthButton(
              title: "Sign in with google",
              onPressed: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            AuthRichText(
              onTap: () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
              firstText: "Don’t have an account?",
              secondText: "Sign Up for free",
            )
          ],
        ),
      ),
    );
  }
}
