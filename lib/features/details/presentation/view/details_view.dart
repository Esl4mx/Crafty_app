import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/custom_details_bottom_nav_bar.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/details_view_body.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.items});

  static const String routeName = 'details';
  final ItemsModel items;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomDetailsBottomNavBar(
        items: widget.items,
      ),
      appBar: CustomAppBar(
        leading: const Icon(Icons.arrow_back),
        leadingOnTap: () {
          Navigator.pop(context);
        },
        trailingOnTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        trailing: isFavorite
            ? Image.asset(
                Assets.imagesIconsHeart,
                scale: 3,
                color: Colors.red,
              )
            : Image.asset(
                Assets.imagesIconsHeart,
                scale: 3,
                color: Colors.black,
              ),
      ),
      body: DetailsViewBody(
        items: widget.items,
      ),
    );
  }
}
