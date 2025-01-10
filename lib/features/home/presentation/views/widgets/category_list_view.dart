import 'package:crafty_app/constants.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List category = ["Armchair", "Sofa", "Bed", "light"];
  List<IconData> icons = [
    Icons.chair,
    Icons.chair_rounded,
    Icons.bed,
    Icons.light
  ];

  int currentInedx = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kHorizontalPadding),
      child: AspectRatio(
        aspectRatio: 10,
        child: Row(
          children: List.generate(
            category.length,
            (index) {
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
                    icon: icons[index],
                    title: category[index],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
