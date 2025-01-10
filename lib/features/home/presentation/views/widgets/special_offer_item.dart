import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/home/presentation/view_model/special_offer_card_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_item_button.dart';
import 'package:flutter/material.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({
    super.key,
    required this.specialOfferCardModel,
    this.btnOnPressed,
  });
  final SpecialOfferCardModel specialOfferCardModel;
  final VoidCallback? btnOnPressed;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 264 / 130,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(specialOfferCardModel.cardImg),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                specialOfferCardModel.title,
                style: AppStyles.styleSemiBold24().copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                specialOfferCardModel.subtitle,
                style: AppStyles.styleRegular13().copyWith(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              SpecialOfferItemButton(
                btnText: specialOfferCardModel.btnText,
                btnOnPressed: btnOnPressed,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
