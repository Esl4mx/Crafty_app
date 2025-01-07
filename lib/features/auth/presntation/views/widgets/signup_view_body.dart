import 'package:crafty_app/constants.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AuthViewHeader(
              title: "Create Account",
              subtitle: "Let’s create account toghter",
            ),
          ],
        ),
      ),
    );
  }
}
