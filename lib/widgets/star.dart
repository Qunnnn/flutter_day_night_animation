import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white54,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              spreadRadius: 5,
              color: const Color(0xffC9ECFC).withOpacity(0.5),
              // offset: Offset(0, 0),
            )
          ]),
    );
  }
}
