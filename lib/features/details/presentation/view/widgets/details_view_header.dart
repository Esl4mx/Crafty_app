import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class DetailsViewHeader extends StatelessWidget {
  const DetailsViewHeader({
    super.key,
    required this.items,
  });

  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            items.title,
            style: AppStyles.styleMedium24(),
            softWrap: true,
          ),
        ),
        const Spacer(),
        Text(
          items.price.toString(),
          style: AppStyles.styleMedium24().copyWith(color: Color(0xffF2A666)),
        )
      ],
    );
  }
}
