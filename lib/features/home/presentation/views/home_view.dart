import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Image.asset(
            Assets.imagesIconsScan,
            scale: 3,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
