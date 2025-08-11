import 'package:flutter/material.dart';
import 'package:forui/widgets/bottom_navigation_bar.dart';
import 'package:haven/providers/lighting_provider.dart';
import 'package:haven/providers/nav_bar_provider.dart';
import 'package:haven/providers/themes_provider.dart';
import 'package:provider/provider.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
        ChangeNotifierProvider(create: (_) => LightingProvider()),
        ChangeNotifierProvider(create: (_) => ThemesProvider()),
      ],
      child: PageStack(),
    );
  }
}

class PageStack extends StatelessWidget {
  const PageStack({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavBarProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: provider.selectedIndex, children: provider.pages),
        ],
      ),
      bottomNavigationBar: FBottomNavigationBar(
        index: provider.selectedIndex,
        onChange: provider.setIndex,
        children: [
          ...provider.icons.map(
            (e) => FBottomNavigationBarItem(
              icon: Icon(e.icon),
              label: Text(e.title),
            ),
          ),
        ],
      ),
    );
  }
}
