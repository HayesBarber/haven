import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/providers/lighting_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:home_api_client/home_api_client.dart';
import 'package:provider/provider.dart';

class Lights extends StatelessWidget {
  const Lights({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightingProvider>(context);

    List<Widget> groups = [];

    groups.add(
      Padding(
        padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
        child: FTileGroup(
          children: [
            FTile(
              title: const Text('Home'),
              prefix: Icon(
                Icons.power_settings_new,
                color: provider.homeIsOn
                    ? context.colorScheme.primary
                    : context.colorScheme.secondary,
              ),
              suffix: provider.loadingDevices.contains('Home')
                  ? CupertinoActivityIndicator()
                  : null,
              onPress: () => provider.toggleHome(),
            ),
          ],
        ),
      ),
    );

    for (var group in provider.roomsMap.entries) {
      if (group.value.isEmpty) continue;

      List<FTile> children = [];

      for (var config in group.value) {
        children.add(
          FTile(
            title: Text(config.name),
            prefix: Icon(
              Icons.power_settings_new,
              color: config.powerState == PowerState.on_
                  ? context.colorScheme.primary
                  : context.colorScheme.secondary,
            ),
            suffix: provider.loadingDevices.contains(config.name)
                ? CupertinoActivityIndicator()
                : null,
            onPress: () => provider.toggleDevice(config),
          ),
        );
      }

      if (children.length > 1) {
        children.insert(
          0,
          FTile(
            title: const Text('All'),
            prefix: Icon(
              Icons.power_settings_new,
              color: provider.roomsPowerMap[group.key] == true
                  ? context.colorScheme.primary
                  : context.colorScheme.secondary,
            ),
            suffix: provider.loadingDevices.contains(group.key.name)
                ? CupertinoActivityIndicator()
                : null,
            onPress: () => provider.toggleRoom(group.key),
          ),
        );
      }

      groups.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
          child: FTileGroup(
            label: Text(group.key.displayName),
            children: children,
          ),
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text('Lights', style: context.textTheme.displayMedium),
                ),
                if (provider.loading) CupertinoActivityIndicator(),
              ],
            ),
          ),
          ...groups,
        ],
      ),
    );
  }
}
