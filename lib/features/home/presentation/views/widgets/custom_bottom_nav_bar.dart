import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/home/presentation/view_model/icons_model.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<IconsModel> iconList = [
    IconsModel(image: Assets.imagesIconsHome, title: "Home"),
    IconsModel(image: Assets.imagesIconsHeart, title: "Favorite"),
    IconsModel(image: Assets.imagesIconsCart3, title: "Shopping Cart"),
    IconsModel(image: Assets.imagesIconsUser, title: "Profile"),
  ];
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (index, isActive) {
        final color = isActive ? AppColors.primaryColor : Colors.grey;
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Image.asset(
                (iconList[index].image),
                color: color,
                scale: 4,
              ),
              Text(
                iconList[index].title,
                style: AppStyles.styleMedium12().copyWith(color: color),
              ),
            ],
          ),
        );
      },
      height: 90,
      activeIndex: bottomNavIndex,
      gapLocation: GapLocation.center,
      onTap: (index) => setState(() => bottomNavIndex = index),
    );
  }
}
