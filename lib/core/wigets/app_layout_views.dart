import 'package:crafty_app/core/wigets/adaptive_layout.dart';
import 'package:crafty_app/features/splash_screen/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppLayoutViews extends StatelessWidget {
  const AppLayoutViews({super.key});
  static const String routeName = "app_layout";
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktopLayout: (context) => const SizedBox(),
      mobileLayout: (context) => const SplashView(),
      tabletLayout: (context) => const SizedBox(),
    );
  }
}
