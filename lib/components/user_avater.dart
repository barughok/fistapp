import 'package:flutter/material.dart';

class UserAvater extends StatelessWidget {
  // final double width;
  // final double height;
  final double size;

  const UserAvater({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: Image.asset(
        'assets/temp/use1.jpg',
        width: size,
        height: size,
      ),
    );
  }
}
