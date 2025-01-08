import 'package:flutter/material.dart';

class CutomAppBarLeadingTrailing extends StatelessWidget {
  const CutomAppBarLeadingTrailing({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        // width: 60,
        // height: 60,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: child,
      ),
    );
  }
}
