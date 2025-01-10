import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/special_offer_card_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SpecialOfferListView extends StatefulWidget {
  const SpecialOfferListView({super.key});

  @override
  State<SpecialOfferListView> createState() => _SpecialOfferListViewState();
}

class _SpecialOfferListViewState extends State<SpecialOfferListView> {
  static List<SpecialOfferCardModel> specialOfferCardModel = [
    SpecialOfferCardModel(Assets.imagesSpecialOffer1,
        title: "25% Discount",
        subtitle: "For a cozy yellow set!",
        btnText: "Learn More"),
    SpecialOfferCardModel(Assets.imagesSpecialOffer2,
        title: "35% Discount",
        subtitle: "For a cozy yellow set!",
        btnText: "Shop Now"),
    SpecialOfferCardModel(Assets.imagesSpecialOffer2,
        title: "35% Discount",
        subtitle: "For a cozy yellow set!",
        btnText: "Shop Now"),
  ];
  int cardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                cardIndex = index;
              });
            },
            disableCenter: true,
            autoPlay: true,
            viewportFraction: 0.9,
            initialPage: 0,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            padEnds: false,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enableInfiniteScroll: false,
            aspectRatio: 264 / 150,
          ),
          itemCount: specialOfferCardModel.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  SpecialOfferItem(
                      specialOfferCardModel: specialOfferCardModel[itemIndex]),
        ),
        const SizedBox(
          height: 7,
        ),
        DotsIndicator(
          dotsCount: specialOfferCardModel.length,
          position: cardIndex,
          decorator: const DotsDecorator(
            color: Color(0xffD2EBE8),
            activeColor: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
// AspectRatio(
//       aspectRatio: 264 / 130,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 2,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 16),
//             child: SpecialOfferItem(
//                 specialOfferCardModel: specialOfferCardModel[index]),
//           );
//         },
//       ),
//     )