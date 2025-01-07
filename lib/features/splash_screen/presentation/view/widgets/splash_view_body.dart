import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/services/shared_preferences_singleton.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/auth/presntation/views/login_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  Assets.imagesAppLogo,
                ))),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            "Crafty Furniture",
            style: AppStyles.styleMedium24().copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }

  void excuteNavigation() {
    bool isOnboardingViewSeen = prefs.getBool(kIsOnboardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnboardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
