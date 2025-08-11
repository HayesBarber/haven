import 'package:flutter/material.dart';
import 'package:haven/services/theme_service.dart';
import 'package:haven/utils/color_util.dart';
import 'package:haven/utils/result.dart';

class ThemesProvider extends ChangeNotifier {
  Map<String, (String, List<Color>)> _themes = {};
  final Set<String> _loadingThemes = {};
  bool _loading = false;
  bool _hasError = false;

  ThemesProvider() {
    _initAsync();
  }

  Map<String, (String, List<Color>)> get themes => _themes;
  Set<String> get loadingThemes => _loadingThemes;
  bool get loading => _loading;
  bool get hasError => _hasError;

  Future<void> _initAsync() async {
    _loading = true;
    notifyListeners();

    final response = await ThemeService.I.readThemes();

    switch (response) {
      case Success(value: final themes):
        _buildColorMap(themes);
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }

  void _buildColorMap(Map<String, String> themes) {
    final Map<String, (String, List<Color>)> map = {};

    for (var entry in themes.entries) {
      map[entry.key] = (
        entry.value,
        ColorUtil.colorsFromCommaDelimitedString(entry.value),
      );
    }

    _themes = map;
  }

  Future<void> applyTheme(String name, String colors) async {
    _loadingThemes.add(name);
    notifyListeners();

    final result = await ThemeService.I.applyTheme(colors);

    switch (result) {
      case Success(value: final updatedDevices):
        break;
      case Failure():
        break;
    }

    _loadingThemes.remove(name);
    notifyListeners();
  }
}
