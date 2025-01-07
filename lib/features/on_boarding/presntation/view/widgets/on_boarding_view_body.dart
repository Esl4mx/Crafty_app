import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/services/shared_preferences_singleton.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/features/auth/presntation/views/login_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/widgets/dots_indicator_list_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/widgets/on_boarding_page_view.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/widgets/on_boarding_skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPage = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicatorListView(
          currentPage: currentPage,
        ),
        const SizedBox(
          height: 73,
        ),
        currentPage == 2
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: CustomButton(
                  onPressed: () {
                    prefs.setBool(kIsOnboardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Text(
                    "Get Started",
                    style: AppStyles.styleSemiBold16(),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding, vertical: 4.5),
                child: OnBoardingSkipButton(
                  gestureOnPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 150),
                        curve: Curves.easeIn);
                  },
                  onPressed: () {
                    pageController.jumpToPage(2);
                  },
                ),
              ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
