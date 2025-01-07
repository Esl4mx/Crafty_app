import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupViewFormSection extends StatelessWidget {
  const SignupViewFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(title: "Fill Name", hintText: "Enter Your Name"),
        SizedBox(
          height: 16,
        ),
        CustomTextFormField(title: "Email", hintText: "Enter Your Email"),
        SizedBox(
          height: 16,
        ),
        CustomTextFormField(
            sufixx: Icon(Icons.remove_red_eye),
            isObscureText: true,
            title: "Password",
            hintText: "Enter Your Password"),
      ],
    );
  }
}
