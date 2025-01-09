import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_item.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_list_view.dart';
import 'package:flutter/material.dart';

class SpecialOfferSection extends StatelessWidget {
  const SpecialOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            "Special Offers",
            style: AppStyles.styleSemiBold16(),
          ),
          const SizedBox(
            height: 16,
          ),
          SpecialOfferListView()
        ],
      ),
    );
  }
}
