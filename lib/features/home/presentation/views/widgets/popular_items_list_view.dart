import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_popular_item.dart';
import 'package:flutter/material.dart';

class PopularItemsListView extends StatelessWidget {
  const PopularItemsListView({super.key});
  static List<ItemsModel> items = [
    ItemsModel(
        title: "Swoon Lounge",
        subtitle: "Regal Do Lobo",
        image: Assets.imagesOnBoarding11,
        price: 136.76),
    ItemsModel(
        title: "Swoon Lounge",
        subtitle: "Regal Do Lobo",
        image: Assets.imagesOnBoarding22,
        price: 99.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kHorizontalPadding),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CustomPopularItem(
                items: items[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
