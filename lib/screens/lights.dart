import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/providers/lighting_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:provider/provider.dart';

class Lights extends StatelessWidget {
  const Lights({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightingProvider>(context);

    List<Widget> groups = [];

    for (var group in provider.roomsMap.entries) {
      if (group.value.isEmpty) continue;

      List<FTile> children = [];

      for (var config in group.value) {
        children.add(FTile(title: Text(config.name)));
      }

      groups.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
          child: FTileGroup(label: Text(group.key.name), children: children),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            child: Text('Lights', style: context.textTheme.displayMedium),
          ),
          ...groups,
        ],
      ),
    );
  }
}
