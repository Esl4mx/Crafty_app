import 'package:crafty_app/core/wigets/app_layout_views.dart';
import 'package:crafty_app/features/auth/presntation/views/login_view.dart';
import 'package:crafty_app/features/auth/presntation/views/signup_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/on_boarding_view.dart';
import 'package:crafty_app/features/splash_screen/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppLayoutViews.routeName:
      return MaterialPageRoute(
        builder: (context) => const AppLayoutViews(),
      );
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignupView(),
      );
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
