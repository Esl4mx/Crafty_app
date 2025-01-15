import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/details_view_body.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.items});

  static const String routeName = 'details';
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const Icon(Icons.arrow_back),
        leadingOnTap: () {
          Navigator.pop(context);
        },
        trailing: Image.asset(
          Assets.imagesIconsHeart,
          scale: 3,
          color: Colors.black,
        ),
      ),
      body: DetailsViewBody(
        items: items,
      ),
    );
  }
}
