import 'package:flutter/material.dart';
import 'package:haven/providers/nav_bar_provider.dart';
import 'package:provider/provider.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NavBarProvider())],
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
    );
  }
}
