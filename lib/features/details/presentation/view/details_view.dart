import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  static const String routeName = 'details';

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
      body: const DetailsViewBody(),
    );
  }
}
