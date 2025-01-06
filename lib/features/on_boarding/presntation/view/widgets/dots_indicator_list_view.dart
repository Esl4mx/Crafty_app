import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicatorListView extends StatelessWidget {
  const DotsIndicatorListView({
    super.key,
    required this.currentPage,
  });
  final int currentPage;
  final bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => DotsIndicator(
          dotsCount: 1,
          decorator: DotsDecorator(
              activeColor: index == currentPage
                  ? AppColors.primaryColor
                  : const Color(0xff98B7B3)),
        ),
      ),
    );
  }
}
