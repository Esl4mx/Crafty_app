import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<IconData> iconList = [
    Icons.home,
    Icons.heart_broken,
    Icons.shopping_cart,
    Icons.person
  ];

  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          child: Icon(
            Icons.control_camera_rounded,
            color: Colors.white,
          ),
          shape: const CircleBorder(),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // notchMargin: 50,

        height: 90,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        // notchSmoothness: NotchSmoothness.verySmoothEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
