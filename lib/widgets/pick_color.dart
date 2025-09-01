import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:haven/utils/extensions.dart';

class PickColor {
  static Future<Color?> pick(BuildContext context) async {
    Color? selected;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(12),
          backgroundColor: context.colorScheme.surfaceContainer,
          content: SingleChildScrollView(
            child: HueRingPicker(
              portraitOnly: true,
              pickerColor: Colors.red,
              onColorChanged: (color) {
                selected = color;
              },
            ),
          ),
        );
      },
    );

    return selected;
  }
}
