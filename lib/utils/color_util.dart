import 'package:flutter/material.dart';

class ColorUtil {
  static List<Color> colorsFromCommaDelimitedString(String colors) {
    return colors
        .split(',')
        .map((hex) => Color(int.parse('0xFF${hex.trim()}')))
        .toList();
  }
}
