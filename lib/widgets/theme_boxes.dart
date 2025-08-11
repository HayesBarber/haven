import 'package:flutter/material.dart';

class ThemeBoxes extends StatelessWidget {
  final List<Color> colors;

  const ThemeBoxes({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    List<Widget> boxes = colors
        .map(
          (c) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 25,
                height: 12.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: c,
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        )
        .toList();
    return Row(mainAxisSize: MainAxisSize.min, children: boxes);
  }
}
