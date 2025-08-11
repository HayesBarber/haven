import 'package:flutter/material.dart';
import 'package:haven/screens/lights.dart';
import 'package:haven/screens/themes.dart';

class NavBarProvider extends ChangeNotifier {
  final List<Widget> pages = const [Lights(), Themes()];

  final List<({IconData icon, String title})> icons = const [
    (icon: Icons.lightbulb, title: 'Lights'),
    (icon: Icons.color_lens, title: 'Themes'),
  ];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  setIndex(int i) {
    _selectedIndex = i;
    notifyListeners();
  }
}
