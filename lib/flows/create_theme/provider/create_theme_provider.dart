import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/create_theme/name_theme.dart';
import 'package:haven/widgets/pick_color.dart';

typedef ColorCallback = void Function(Color color);

class CreateThemeProvider extends NestedNavigatorProvider {
  final List<Color> _colors = [const Color(0xFFff0000)];
  String _name = '';

  CreateThemeProvider({required super.navKey});

  List<Color> get colors => _colors;
  bool get canAdd => _colors.length < 4;
  bool get canRemove => _colors.length > 1;
  bool get canFinish => _name.trim().isNotEmpty;

  void addColor(BuildContext context) {
    if (!canAdd) return;

    _colors.add(const Color(0xFFff0000));

    editColor(context, _colors.length - 1);
  }

  void removeColor(int i) {
    if (!canRemove) return;

    _colors.removeAt(i);
    notifyListeners();
  }

  void editColor(BuildContext context, int index) {
    _openColorPicker(context, (color) {
      _colors[index] = color;
      notifyListeners();
    }, _colors[index]);
  }

  void updateName(String value) {
    _name = value;
    notifyListeners();
  }

  void _openColorPicker(
    BuildContext context,
    ColorCallback callback,
    Color curr,
  ) async {
    Color? color = await PickColor.pick(context, curr);
    color ??= curr;
    callback(color);
  }

  void testTheme() {}

  void createThemeName() {
    push(const NameTheme());
  }

  void finish() {}
}
