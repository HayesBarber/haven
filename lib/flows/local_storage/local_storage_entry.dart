import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forui/widgets/tile.dart';
import 'package:haven/flows/local_storage/provider/local_storage_provider.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/scaffold_title.dart';
import 'package:provider/provider.dart';

class LocalStorageEntry extends StatelessWidget {
  const LocalStorageEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocalStorageProvider>(context);

    final deleteStorage = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children: [
          FTile(
            title: Text('Clear Storage'),
            prefix: Icon(Icons.delete),
            onPress: () {},
          ),
        ],
      ),
    );

    final tileGroup = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children:
            provider.storageData?.entries
                .map((e) => _buildStorageTile(e.key, e.value, provider))
                .toList() ??
            [],
      ),
    );

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          ScaffoldTitle(title: 'Local Storage'),
          deleteStorage,
          tileGroup,
        ],
      ),
    );
  }

  FTile _buildStorageTile(
    String title,
    String value,
    LocalStorageProvider provider,
  ) {
    final isCopied = provider.justCopiedKey == title;
    return FTile(
      title: Text(title),
      subtitle: Text(value),
      suffix: Icon(
        isCopied ? Icons.check : Icons.copy,
        color: isCopied ? Colors.green : null,
      ),
      onPress: () {
        Clipboard.setData(ClipboardData(text: value));
        provider.markCopied(title);
      },
    );
  }
}
