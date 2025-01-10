import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_most_intereste_container.dart';
import 'package:flutter/material.dart';

class MostInterestedListView extends StatelessWidget {
  const MostInterestedListView({super.key});

  static List<ItemsModel> items = [
    ItemsModel(
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 300, // Fixed height for the horizontal ListView
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CustomMostInteresteContainer(items: items[index]),
            );
          },
        ),
      ),
    );
  }
}
