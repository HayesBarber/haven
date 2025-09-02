import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/create_theme/name_theme.dart';
import 'package:haven/services/theme_service.dart';
import 'package:haven/utils/color_util.dart';
import 'package:haven/utils/result.dart';
import 'package:haven/widgets/pick_color.dart';

typedef ColorCallback = void Function(Color color);

class CreateThemeProvider extends NestedNavigatorProvider {
  final List<Color> _colors = [const Color(0xFFff0000)];
  String _name = '';
  bool _errorCreatingTheme = false;
  bool _loading = false;

  CreateThemeProvider({required super.navKey});

  List<Color> get colors => _colors;
  bool get canAdd => _colors.length < 4;
  bool get canRemove => _colors.length > 1;
  bool get canFinish => _name.trim().isNotEmpty;
  bool get errorCreatingTheme => _errorCreatingTheme;
  bool get loading => _loading;

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

  void testTheme() {
    String theme = ColorUtil.colorsToCommaDelimitedString(_colors);
    ThemeService.I.applyTheme(theme);
  }

  void createThemeName() {
    push(const NameTheme());
  }

  void finish() async {
    if (!canFinish) return;

    _loading = true;
    notifyListeners();

    String theme = ColorUtil.colorsToCommaDelimitedString(_colors);
    final result = await ThemeService.I.createTheme(_name, theme);

    _loading = false;

    switch (result) {
      case Success(value: final value):
        Navigation.I.pop(value);
      case Failure():
        _errorCreatingTheme = true;
        notifyListeners();
    }
  }
}
