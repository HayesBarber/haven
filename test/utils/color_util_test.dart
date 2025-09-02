import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:haven/utils/color_util.dart';

void main() {
  group('ColorUtil', () {
    test('colorsToCommaDelimitedString converts colors to hex strings', () {
      final colors = [
        const Color.fromARGB(255, 255, 0, 0),
        const Color.fromARGB(255, 0, 255, 0),
        const Color.fromARGB(255, 0, 0, 255),
      ];

      final result = ColorUtil.colorsToCommaDelimitedString(colors);

      expect(result, equals('FF0000,00FF00,0000FF'));
    });

    test('colorsFromCommaDelimitedString parses hex strings to colors', () {
      const input = 'FF0000,00FF00,0000FF';
      final colors = ColorUtil.colorsFromCommaDelimitedString(input);

      expect(colors.length, 3);
      expect(colors[0], equals(const Color.fromARGB(255, 255, 0, 0)));
      expect(colors[1], equals(const Color.fromARGB(255, 0, 255, 0)));
      expect(colors[2], equals(const Color.fromARGB(255, 0, 0, 255)));
    });

    test('round-trip conversion preserves values', () {
      final original = [
        const Color.fromARGB(255, 123, 45, 67),
        const Color.fromARGB(255, 0, 128, 255),
      ];

      final asString = ColorUtil.colorsToCommaDelimitedString(original);
      final parsed = ColorUtil.colorsFromCommaDelimitedString(asString);

      expect(parsed, equals(original));
    });
  });
}
