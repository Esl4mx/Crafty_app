import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Image.asset(
              Assets.imagesSearch,
              scale: 4,
            ),
            suffixIcon: Image.asset(
              Assets.imagesMenu,
              scale: 4,
            ),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
            hintStyle: AppStyles.styleRegular14(),
            hintText: "Search Furniture",
            filled: true,
            fillColor: const Color(0xffFFFFFF),
            border: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
