import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/special_offer_card_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_item.dart';
import 'package:flutter/material.dart';

class SpecialOfferListView extends StatelessWidget {
  const SpecialOfferListView({super.key});
  static List<SpecialOfferCardModel> specialOfferCardModel = [
    SpecialOfferCardModel(Assets.imagesSpecialOffer1,
        title: "25% Discount",
        subtitle: "For a cozy yellow set!",
        btnText: "Learn More"),
    SpecialOfferCardModel(Assets.imagesSpecialOffer2,
        title: "35% Discount",
        subtitle: "For a cozy yellow set!",
        btnText: "Shop Now")
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 264 / 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SpecialOfferItem(
                specialOfferCardModel: specialOfferCardModel[index]),
          );
        },
      ),
    );
  }
}
