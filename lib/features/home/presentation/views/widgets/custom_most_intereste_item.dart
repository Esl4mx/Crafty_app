import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:crafty_app/features/details/presentation/view/details_view.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class CustomMostInteresteItem extends StatelessWidget {
  const CustomMostInteresteItem({super.key, required this.items});
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate a responsive width for each item, e.g., 60% of the screen width
    double itemWidth = screenWidth * 0.6; // Adjust percentage as needed

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailsView.routeName);
      },
      child: Container(
        width: itemWidth, // Set dynamic width based on screen size
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Center(
                  child: Image.asset(
                    items.image,
                  ),
                ),
              ),
              const Spacer(),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  items.title,
                  style: AppStyles.styleSemiBold16(),
                ),
                subtitle: Text(
                  items.subtitle,
                  style: AppStyles.styleRegular13(),
                ),
                trailing: CutomAppBarLeadingTrailing(
                  color: AppColors.primaryColor,
                  onTap: () {},
                  child: Image.asset(
                    Assets.imagesIconsBagShopping2,
                    scale: 4,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "\$ ${items.price.toString()}",
                style: AppStyles.styleMedium16()
                    .copyWith(color: const Color(0xffF2A666)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
