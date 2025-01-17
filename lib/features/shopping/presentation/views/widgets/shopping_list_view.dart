import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/shopping/presentation/views/widgets/shopping_list_view_item.dart';
import 'package:flutter/material.dart';

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({super.key});

  static List<ItemsModel> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: ShoppingListViewItem(items: cartItems[index]),
          );
        },
      ),
    );
  }
}
