import 'package:crafty_app/features/favourit/presentation/views/widgets/favourit_list_view_item.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_popular_item.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/view_model/items_model.dart';

class FavouritViewBody extends StatelessWidget {
  const FavouritViewBody({super.key, required this.items});
  final List<ItemsModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FavouritListViewItem(items: items[index]),
          );
        },
      ),
    );
  }
}
