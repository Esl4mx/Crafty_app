import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/core/wigets/custom_text_form_field.dart';
import 'package:crafty_app/features/auth/presntation/cubits/signup_cubit/signup_cubit.dart';
import 'package:crafty_app/features/auth/presntation/views/signup_view.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/google_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewFormSection extends StatefulWidget {
  const SignupViewFormSection({super.key});

  @override
  State<SignupViewFormSection> createState() => _SignupViewFormSectionState();
}

class _SignupViewFormSectionState extends State<SignupViewFormSection> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
              onSaved: (val) {
                name = val!;
              },
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "This Field Is Requird";
                }
              },
              title: "Full Name",
              hintText: "Enter Your Name"),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              onSaved: (val) {
                email = val!;
              },
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "This Field Is Requird";
                }
              },
              title: "Email",
              hintText: "Enter Your Email"),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              onSaved: (val) {
                password = val!;
              },
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "This Field Is Requird";
                }
              },
              sufixx: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                    color: Colors.grey,
                  )),
              isObscureText: isObscure,
              title: "Password",
              hintText: "Enter Your Password"),
          const SizedBox(
            height: 24,
          ),
          CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignupCubit>().createUserWithEmailAndPassword(
                        email,
                        password,
                        name,
                      );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              child: Text(
                "Sign Up",
                style:
                    AppStyles.styleSemiBold16().copyWith(color: Colors.white),
              )),
          const SizedBox(
            height: 16,
          ),
          GoogleAuthButton(
            onPressed: () {},
            title: "Sign up with Google",
          ),
        ],
      ),
    );
  }
}
