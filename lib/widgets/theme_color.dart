import 'package:flutter/material.dart';
import 'package:haven/utils/extensions.dart';

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
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            border: Border.all(color: context.colorScheme.surface, width: 2),
          ),
          child: Icon(Icons.remove, color: Colors.black),
        ),
      ],
    );
  }
}
