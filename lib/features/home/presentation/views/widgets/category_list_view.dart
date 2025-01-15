import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/icons_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List<IconsModel> category = [
    IconsModel(image: Assets.imagesIconsArmchair, title: "Armchair"),
    IconsModel(image: Assets.imagesIconsSofa, title: "Sofa"),
    IconsModel(image: Assets.imagesIconsBed, title: "Bed"),
    IconsModel(image: Assets.imagesIconsLight, title: "Light"),
  ];

  int currentInedx = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kHorizontalPadding),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentInedx = index;
                  });
                },
                child: CategoryItem(
                  isSelected: currentInedx == index,
                  image: category[index].image,
                  title: category[index].title,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
//  Padding(
//       padding: const EdgeInsets.only(left: kHorizontalPadding),
//       child: AspectRatio(
//         aspectRatio: 10,
//         child: Row(
//           children: List.generate(
//             category.length,
//             (index) {
//               return Padding(
//                 padding: const EdgeInsets.only(right: 12),
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       currentInedx = index;
//                     });
//                   },
//                   child: CategoryItem(
//                     isSelected: currentInedx == index,
//                     image: category[index].image,
//                     title: category[index].title,
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     )