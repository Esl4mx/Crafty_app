import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/shopping/presentation/views/widgets/shopping_list_view.dart';
import 'package:crafty_app/features/shopping/presentation/views/widgets/shopping_list_view_item.dart';
import 'package:flutter/material.dart';

class ShoppingViewBody extends StatelessWidget {
  const ShoppingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [ShoppingListView()],
      ),
    );
  }
}
