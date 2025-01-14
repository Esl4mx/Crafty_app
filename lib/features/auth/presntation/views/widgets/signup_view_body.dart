import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/auth_header.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/auth_rich_text.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/google_auth_button.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/signup_view_form_section.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthViewHeader(
              title: "Create Account",
              subtitle: "Let’s create account toghter",
            ),
            const SizedBox(
              height: 32,
            ),
            const SignupViewFormSection(),
            const SizedBox(
              height: 24,
            ),
            AuthRichText(
              firstText: "Already have an account? ",
              secondText: "Sign In",
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
