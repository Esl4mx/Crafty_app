import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/features/details/presentation/view/widgets/custom_circle_container.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class ShoppingListViewItem extends StatefulWidget {
  ShoppingListViewItem({super.key, required this.items});

  final ItemsModel items;

  @override
  State<ShoppingListViewItem> createState() => _ShoppingListViewItemState();
}

class _ShoppingListViewItemState extends State<ShoppingListViewItem> {
  int count = 1;
  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (count > 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    // Calculate a responsive width for each item, e.g., 60% of the screen width
    double itemWidth = screenWidth * 0.65; // Adjust percentage as needed
    double itemHight = screenHight * 0.13; // Adjust percentage as needed

    return Container(
      height: itemHight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xffF0F0F2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                widget.items.image,
                scale: 4,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.items.title,
                  style: AppStyles.styleSemiBold16(),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  widget.items.subtitle,
                  style: AppStyles.styleRegular13(),
                ),
                const Spacer(),
                Text(
                  "\$ ${widget.items.price * count}",
                  style: AppStyles.styleMedium16()
                      .copyWith(color: const Color(0xffF2A666)),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    CustomCircleContainer(
                      onTap: () {
                        decrementCounter();
                      },
                      color: const Color(0xffF0F0F2),
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "${count}",
                      style: AppStyles.styleMedium14(),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CustomCircleContainer(
                      onTap: () {
                        incrementCounter();
                      },
                      color: AppColors.primaryColor,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IntrinsicWidth(
                  child: SizedBox(
                    height: 30,
                    child: CustomButton(
                        buttonColor: Colors.red,
                        onPressed: () {},
                        child: Text("Remove",
                            style: AppStyles.styleRegular14()
                                .copyWith(color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
