import 'package:flutter/material.dart';

class SunShine extends StatelessWidget {
  const SunShine({super.key, required this.radius, required this.child});
  final double radius;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.white.withOpacity(0.2)),
      child: Center(
        child: child,
      ),
    );
  }
}
