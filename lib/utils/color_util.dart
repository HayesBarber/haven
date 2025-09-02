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
          (color) => color.value.toRadixString(16).substring(2).toUpperCase(),
        )
        .join(',');
  }
}
