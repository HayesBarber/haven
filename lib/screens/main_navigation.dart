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
        ChangeNotifierProxyProvider<LightingProvider, ThemesProvider>(
          create: (_) => ThemesProvider(),
          update: (_, lighting, themes) {
            themes ??= ThemesProvider();
            themes.setLightingProvider(lighting);
            return themes;
          },
        ),
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
