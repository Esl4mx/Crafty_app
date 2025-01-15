import 'package:crafty_app/core/utlis/app_colors.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/utlis/app_styles.dart';
import 'package:crafty_app/core/wigets/custom_button.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';

class CustomDetailsBottomNavBar extends StatefulWidget {
  const CustomDetailsBottomNavBar({super.key, required this.items});
  final ItemsModel items;

  @override
  State<CustomDetailsBottomNavBar> createState() =>
      _CustomDetailsBottomNavBarState();
}

class _CustomDetailsBottomNavBarState extends State<CustomDetailsBottomNavBar> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        // height: 154,
        decoration: BoxDecoration(
            color: AppColors.containerColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  CustomCircleContainer(
                    color: const Color(0xffF0F0F2),
                    onTap: () {
                      decrementCounter();
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Color(0xff828A89),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$counter",
                    style: AppStyles.styleMedium24(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomCircleContainer(
                    color: AppColors.primaryColor,
                    onTap: () {
                      incrementCounter();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Total : \$${widget.items.price * counter}",
                    style: AppStyles.styleMedium24(),
                  )
                ],
              ),
              // Spacer(),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesIconsAddToCart,
                        scale: 4,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add To Cart",
                        style: AppStyles.styleSemiBold16()
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({
    super.key,
    this.child,
    this.onTap,
    this.color,
  });
  final Widget? child;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: InkWell(onTap: onTap, child: Center(child: child)),
    );
  }
}
