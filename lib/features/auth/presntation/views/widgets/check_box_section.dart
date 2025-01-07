import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class CheckBoxSection extends StatefulWidget {
  const CheckBoxSection({super.key});

  @override
  State<CheckBoxSection> createState() => _CheckBoxSectionState();
}

class _CheckBoxSectionState extends State<CheckBoxSection> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CheckboxMenuButton(
            value: checkBoxValue,
            onChanged: (value) {
              setState(() {
                value != value;
                checkBoxValue = value!;
              });
            },
            child: Text(
              "Remember For 30 Days",
              style: AppStyles.styleRegular14(),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password",
              style: AppStyles.styleRegular14().copyWith(
                color: Colors.black,
              ),
            ))
      ],
    );
  }
}
