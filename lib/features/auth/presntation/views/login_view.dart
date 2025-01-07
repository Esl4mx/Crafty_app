import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = "loginview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingOnTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.arrow_back,
          size: 24,
        ),
      ),
      body: const LoginViewBody(),
    );
  }
}
