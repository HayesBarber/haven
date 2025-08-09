import 'package:flutter/material.dart';
import 'package:haven/screens/lights.dart';

class NavBarProvider extends ChangeNotifier {
  final List<Widget> pages = const [Lights()];

  final List<({IconData icon, String title})> icons = const [
    (icon: Icons.lightbulb, title: 'Lights'),
  ];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  setIndex(int i) {
    _selectedIndex = i;
    notifyListeners();
  }
}
