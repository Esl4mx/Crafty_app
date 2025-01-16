import 'package:flutter/material.dart';

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
