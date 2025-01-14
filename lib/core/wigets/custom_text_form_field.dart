import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.title,
      required this.hintText,
      this.isObscureText,
      this.keyboardType,
      this.sufixx,
      this.validator,
      this.onSaved});

  final String title, hintText;

  final bool? isObscureText;
  final TextInputType? keyboardType;
  final Widget? sufixx;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium14()),
        const SizedBox(height: 8),
        TextFormField(
          onSaved: onSaved,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: isObscureText ?? false,
          decoration: InputDecoration(
              suffixIcon: sufixx,
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
              hintStyle: AppStyles.styleRegular14(),
              hintText: hintText,
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              border: buildBorder()),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
