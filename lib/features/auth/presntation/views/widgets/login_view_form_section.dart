import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewFormSection extends StatelessWidget {
  const LoginViewFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hintText: "Enter Your Email",
          title: "Email",
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          hintText: "Enter Your Password",
          title: "Password",
          isObscureText: true,
          sufixx: Icon(
            Icons.remove_red_eye_rounded,
            color: Color(0xffC9CECF),
          ),
        ),
      ],
    );
  }
}
