import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:crafty_app/features/shopping/presentation/views/widgets/shopping_view_body.dart';
import 'package:flutter/material.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  static const String routeName = 'shopping';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Shopping",
          leading: Icon(Icons.arrow_back),
          leadingOnTap: () {
            Navigator.of(context).pop();
          }),
      body: SafeArea(child: ShoppingViewBody()),
    );
  }
}
