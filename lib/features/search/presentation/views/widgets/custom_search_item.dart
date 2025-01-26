import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({super.key, required this.items});
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    double itemWidth = screenWidth * 0.5;
    double itemHight = screenHight * 0.2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: itemWidth,
              height: itemHight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.containerColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: Center(
                    child: Image.asset(
                      items.image,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 12,
                right: 12,
                child: Image.asset(
                  Assets.imagesIconsHeart,
                  scale: 4,
                ))
          ],
        ),
        Spacer(),
        Text(
          items.title,
          style: AppStyles.styleSemiBold16(),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "\$ ${items.price.toString()}",
          style: AppStyles.styleMedium16()
              .copyWith(color: const Color(0xffF2A666)),
        )
      ],
    );
  }
}

//  Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
               
//                 const Spacer(),
//                 ListTile(
//                   contentPadding: const EdgeInsets.all(0),
//                   title: Text(
//                     items.title,
//                     style: AppStyles.styleSemiBold16(),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   subtitle: Text(
//                     items.subtitle,
//                     style: AppStyles.styleRegular13(),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   trailing: CutomAppBarLeadingTrailing(
//                     color: AppColors.primaryColor,
//                     onTap: () {},
//                     child: Image.asset(
//                       Assets.imagesIconsBagShopping2,
//                       scale: 4,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   "\$ ${items.price.toString()}",
//                   style: AppStyles.styleMedium16()
//                       .copyWith(color: const Color(0xffF2A666)),
//                 ),
//               ],
//             ),

