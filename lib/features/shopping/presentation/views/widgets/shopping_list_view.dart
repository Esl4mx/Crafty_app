import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/shopping/presentation/views/widgets/shopping_list_view_item.dart';
import 'package:flutter/material.dart';

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({super.key});

  static List<ItemsModel> items = [
    ItemsModel(
        srcModel: Assets.imagesModelsChairVasa,
        title: "Minimalist Chair",
        subtitle: "Regal Do Lobo",
        image: Assets.imagesShoppingChair,
        price: 100,
        discription:
            "Regal Do Lobo Minimalist Chair with armrest and cushion for Living Room and Office and Bedroom"),
    ItemsModel(
        srcModel: Assets.imagesModelsOxChair,
        title: "Hallingdal Chair",
        subtitle: "Hatil-Loren",
        image: Assets.imagesShoppingChair1,
        price: 120,
        discription:
            "Regal Do Lobo Minimalist Chair with armrest and cushion for Living Room and Office and Bedroom"),
    ItemsModel(
        srcModel: Assets.imagesModelsChairBlackLounge,
        title: "Hiro Armchair",
        subtitle: "Hatil-Loren",
        image: Assets.imagesShoppingChair2,
        price: 80,
        discription:
            "Hiro Armchair with armrest and cushion from Hatil-Loren for Living Room and Office and Bedroom"),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: ShoppingListViewItem(items: items[index]),
          );
        },
      ),
    );
  }
}
