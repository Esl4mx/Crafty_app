import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewFormSection extends StatelessWidget {
  const LoginViewFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          validator: (val) {
            // if (val!.isEmpty) {
            //   return "Please Enter Your Email";
            // }
          },
          hintText: "Enter Your Email",
          title: "Email",
        ),
        const SizedBox(height: 16),
        CustomTextFormField(
          validator: (val) {},
          hintText: "Enter Your Password",
          title: "Password",
          isObscureText: true,
          sufixx: const Icon(
            Icons.remove_red_eye_rounded,
            color: Color(0xffC9CECF),
          ),
        ),
      ],
    );
  }
}
