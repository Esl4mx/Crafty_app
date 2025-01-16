import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/favourit/presentation/views/widgets/favourit_view_body.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class FavouritView extends StatelessWidget {
  const FavouritView({super.key, required this.items});

  static const routeName = 'favourit';
  final List<ItemsModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const Icon(Icons.arrow_back),
        leadingOnTap: () {
          Navigator.of(context).pop();
        },
        title: "Favourit",
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: FavouritViewBody(
        items: items,
      ),
    );
  }
}
