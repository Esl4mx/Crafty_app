import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(Assets.imagesIconsPeopleIcon, scale: 4),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "341 Seen",
                  style: AppStyles.styleRegular13(),
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(Assets.imagesIconsHeart, scale: 4),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "297 Liked",
                  style: AppStyles.styleRegular13(),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            RatingBar.builder(
              itemSize: 20,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage(Assets.imagesProfileImage),
        ),
      ],
    );
  }
}
