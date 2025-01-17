import 'package:crafty_app/core/wigets/app_layout_views.dart';
import 'package:crafty_app/features/auth/presntation/views/login_view.dart';
import 'package:crafty_app/features/auth/presntation/views/signup_view.dart';
import 'package:crafty_app/features/favourit/presentation/views/favourit_view.dart';
import 'package:crafty_app/features/home/presentation/views/home_view.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/popular_items_list_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/on_boarding_view.dart';
import 'package:crafty_app/features/profile/presentation/views/profile_view.dart';
import 'package:crafty_app/features/shopping/presentation/views/shopping_view.dart';
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
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );
    case FavouritView.routeName:
      return MaterialPageRoute(
        builder: (context) => FavouritView(
          items: PopularItemsListView.items,
        ),
      );
    case ShoppingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ShoppingView(),
      );
    case ProfileView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ProfileView(),
      );
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
