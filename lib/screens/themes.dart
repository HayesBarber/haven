import 'package:flutter/material.dart';
import 'package:haven/providers/themes_provider.dart';
import 'package:haven/widgets/scaffold_title.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemesProvider>(context);

    return Scaffold(
      body: ListView(
        children: [ScaffoldTitle(title: 'Themes', loading: provider.loading)],
      ),
    );
  }
}
