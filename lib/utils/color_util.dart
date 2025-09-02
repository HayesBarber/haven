import 'package:flutter/material.dart';

class ColorUtil {
  static List<Color> colorsFromCommaDelimitedString(String colors) {
    return colors
        .split(',')
        .map((hex) => Color(int.parse('0xFF${hex.trim()}')))
        .toList();
  }

  static String colorsToCommaDelimitedString(List<Color> colors) {
    return colors
        .map(
          (color) =>
              '${((color.r * 255).round() & 0xFF).toRadixString(16).padLeft(2, '0')}'
                      '${((color.g * 255).round() & 0xFF).toRadixString(16).padLeft(2, '0')}'
                      '${((color.b * 255).round() & 0xFF).toRadixString(16).padLeft(2, '0')}'
                  .toUpperCase(),
        )
        .join(',');
  }
}
