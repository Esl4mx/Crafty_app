import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class CustomPopularItem extends StatelessWidget {
  const CustomPopularItem({super.key, required this.items});
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate a responsive width for each item, e.g., 60% of the screen width
    double itemWidth = screenWidth * 0.65; // Adjust percentage as needed

    return Container(
      width: itemWidth, // Set dynamic width based on screen size
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: Color(0xffF0F0F2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                items.image,
                scale: 4,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items.title,
                  style: AppStyles.styleSemiBold16(),
                ),
                Text(
                  items.subtitle,
                  style: AppStyles.styleRegular13(),
                ),
                const Spacer(),
                Text(
                  "\$ ${items.price.toString()}",
                  style: AppStyles.styleMedium16()
                      .copyWith(color: const Color(0xffF2A666)),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
