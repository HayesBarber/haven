import 'package:flutter/material.dart';
import 'package:haven/utils/extensions.dart';

class ThemeColor extends StatelessWidget {
  final Color color;
  final VoidCallback onRemove;

  const ThemeColor({super.key, required this.color, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Transform.translate(
            offset: const Offset(-4, -4),
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.colorScheme.surface,
                  width: 2,
                ),
              ),
              child: Icon(Icons.remove, color: context.colorScheme.surface),
            ),
          ),
        ),
      ],
    );
  }
}
