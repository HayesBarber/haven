import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/providers/themes_provider.dart';
import 'package:haven/widgets/scaffold_title.dart';
import 'package:haven/widgets/theme_boxes.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemesProvider>(context);

    final themesGroup = Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
      child: FTileGroup(
        children: [
          ...provider.themes.entries.map(
            (entry) =>
                _buildThemeTile(title: entry.key, colors: entry.value.$2),
          ),
        ],
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          ScaffoldTitle(title: 'Themes', loading: provider.loading),
          themesGroup,
        ],
      ),
    );
  }

  FTile _buildThemeTile({required String title, required List<Color> colors}) {
    return FTile(
      title: Text(title),
      suffix: ThemeBoxes(colors: colors),
    );
  }
}
