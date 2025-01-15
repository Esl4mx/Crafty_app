import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
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
        children: [
          ModelView(
            items: items,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Text(
                items.title,
                style: AppStyles.styleMedium24(),
              ),
              Spacer(),
              Text(
                items.price.toString(),
                style: AppStyles.styleMedium24()
                    .copyWith(color: Color(0xffF2A666)),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
