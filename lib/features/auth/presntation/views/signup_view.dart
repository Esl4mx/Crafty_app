import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading: const Icon(Icons.arrow_back),
          leadingOnTap: () {
            Navigator.pop(context);
          }),
      body: const SignupViewBody(),
    );
  }
}
