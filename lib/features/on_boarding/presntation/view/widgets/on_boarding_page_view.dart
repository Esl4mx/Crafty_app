import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/on_boarding/presntation/view/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title:
              "View And Exprience \n Furniture With The Help \n Of Augmented Reality ",
          image: Assets.imagesOnBoarding11,
        ),
        PageViewItem(
          title:
              "Design Your Space \n With Augmented Reality By \n Creating Room ",
          image: Assets.imagesOnBoarding22,
        ),
        PageViewItem(
          title:
              "Explore World Class Top \n Furnitures As Per Your \n Requirements & Choice ",
          image: Assets.imagesOnBoarding33,
        )
      ],
    );
  }
}
