import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/providers/themes_provider.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:haven/widgets/theme_boxes.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemesProvider>(context);

    final newTheme = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children: [
          FTile(
            title: Text('New Theme'),
            prefix: Icon(Icons.add),
            onPress: () {
              provider.createNewTheme();
            },
          ),
        ],
      ),
    );

    final themesGroup = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children: [
          ...provider.themes.entries.map(
            (entry) => _buildThemeTile(
              context: context,
              provider: provider,
              title: entry.key,
              colors: entry.value.$2,
              isLoading: provider.loadingThemes.contains(entry.key),
              onPress: () => provider.applyTheme(entry.key, entry.value.$1),
            ),
          ),
        ],
      ),
    );

    return RefreshableScaffold(
      title: 'Themes',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [newTheme, themesGroup],
    );
  }

  FTile _buildThemeTile({
    required BuildContext context,
    required ThemesProvider provider,
    required String title,
    required List<Color> colors,
    required VoidCallback onPress,
    required bool isLoading,
  }) {
    return FTile(
      title: Text(title),
      suffix: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLoading) ...[CupertinoActivityIndicator(), SizedBox(width: 8)],
          ThemeBoxes(colors: colors),
        ],
      ),
      onPress: onPress,
      onLongPress: () => showFDialog(
        context: context,
        builder: (context, style, animation) => FDialog(
          style: (_) => style,
          animation: animation,
          direction: Axis.vertical,
          title: Text('Delete "$title"?'),
          body: const Text(
            'This action cannot be undone. This will permanently delete the theme.',
          ),
          actions: [
            FButton(
              style: FButtonStyle.outline(),
              onPress: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            FButton(
              onPress: () {
                provider.deleteTheme(title);
                Navigator.of(context).pop();
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
