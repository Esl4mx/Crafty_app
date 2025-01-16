import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/favourit/presentation/views/favourit_view.dart';
import 'package:crafty_app/features/home/presentation/view_model/icons_model.dart';
import 'package:crafty_app/features/home/presentation/views/home_view.dart';
import 'package:crafty_app/features/shopping/presentation/views/shopping_view.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  static int bottomNavIndex = 0;

  static List<IconsModel> iconList = [
    IconsModel(image: Assets.imagesIconsHome, title: "Home"),
    IconsModel(image: Assets.imagesIconsHeart, title: "Favorite"),
    IconsModel(image: Assets.imagesIconsCart3, title: "Shopping"),
    IconsModel(image: Assets.imagesIconsUser, title: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    Future<Object?>? navigateTo(int index) {
      if (index == 0) {
        bottomNavIndex = index;
        return Navigator.of(context).pushNamed(HomeView.routeName);
      } else if (index == 1) {
        bottomNavIndex = index;
        return Navigator.of(context).pushNamed(FavouritView.routeName);
      } else if (index == 2) {
        return Navigator.of(context).pushNamed(ShoppingView.routeName);
      }
    }

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
      onTap: (index) {
        bottomNavIndex = index;

        navigateTo(index);
      },
    );
  }
}
