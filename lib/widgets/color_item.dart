import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 24,
            backgroundColor: const Color.fromARGB(255, 80, 240, 74),
            child: CircleAvatar(
              backgroundColor: color,
              radius: 18,
            ))
        : CircleAvatar(
            backgroundColor: color,
            radius: 20,
          );
  }
}
