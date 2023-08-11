import 'package:flutter/material.dart';
import 'package:flutter_day_night_animation/widgets/sunshine.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 120,
      child: SunShine(
        radius: 100,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xffF6F4EB),
                  Color(0xffFD8D14),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
        ),
      ),
    );
  }
}
