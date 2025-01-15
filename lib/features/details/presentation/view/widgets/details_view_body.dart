import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/details_view_header.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/rating_section.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

import '3d_model_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.items});
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: ModelView(
              items: items,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          DetailsViewHeader(items: items),
          const SizedBox(
            height: 24,
          ),
          const RatingSection(),
          const SizedBox(
            height: 24,
          ),
          Text("Description", style: AppStyles.styleMedium24()),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Text(
              items.discription,
              style: AppStyles.styleRegular14().copyWith(height: 1.7),
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
