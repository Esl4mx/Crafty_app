import 'package:flutter/material.dart';

class CutomAppBarLeadingTrailing extends StatelessWidget {
  const CutomAppBarLeadingTrailing({
    super.key,
    required this.child,
    required this.onTap,
    this.color,
  });

  final Widget child;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        // width: 60,
        // height: 60,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
