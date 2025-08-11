import 'package:flutter/material.dart';
import 'package:haven/services/theme_service.dart';
import 'package:haven/utils/result.dart';

class ThemesProvider extends ChangeNotifier {
  Map<String, String> _themes = {};
  bool _loading = false;
  bool _hasError = false;

  ThemesProvider() {
    _initAsync();
  }

  Map<String, String> get themes => _themes;
  bool get loading => _loading;
  bool get hasError => _hasError;

  Future<void> _initAsync() async {
    _loading = true;
    notifyListeners();

    final response = await ThemeService.I.readThemes();

    switch (response) {
      case Success(value: final themes):
        _themes = themes;
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }
}
