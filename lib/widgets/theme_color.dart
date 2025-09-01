import 'package:flutter/material.dart';

class ThemeColor extends StatelessWidget {
  final Color color;
  final VoidCallback onRemove;

  const ThemeColor({super.key, required this.color, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ],
    );
  }
}
