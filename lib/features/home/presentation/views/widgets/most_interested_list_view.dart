import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_most_intereste_item.dart';
import 'package:flutter/material.dart';

class MostInterestedListView extends StatelessWidget {
  const MostInterestedListView({super.key});

  static List<ItemsModel> items = [
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
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
              child: CustomMostInteresteItem(items: items[index]),
            );
          },
        ),
      ),
    );
  }
}
