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

    if (provider.roomsMap.isNotEmpty) {
      groups.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
          child: FTileGroup(
            children: [
              _buildPowerTile(
                context: context,
                title: 'Home',
                isOn: provider.homeIsOn,
                isLoading: provider.loadingDevices.contains('home'),
                onPress: () => provider.toggleHome(),
              ),
            ],
          ),
        ),
      );
    }

    for (var group in provider.roomsMap.entries) {
      if (group.value.isEmpty) continue;

      List<FTile> children = [];

      for (var config in group.value) {
        children.add(
          _buildPowerTile(
            context: context,
            title: config.name,
            isOn: config.powerState == PowerState.on_,
            isLoading: provider.loadingDevices.contains(config.name),
            onPress: () => provider.toggleDevice(config),
          ),
        );
      }

      if (children.length > 1) {
        children.insert(
          0,
          _buildPowerTile(
            context: context,
            title: 'All',
            isOn: provider.roomsPowerMap[group.key] == true,
            isLoading: provider.loadingDevices.contains(group.key),
            onPress: () => provider.toggleRoom(group.key),
          ),
        );
      }

      groups.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 8),
          child: FTileGroup(label: Text(group.key), children: children),
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

  FTile _buildPowerTile({
    required BuildContext context,
    required String title,
    required bool isOn,
    required bool isLoading,
    required VoidCallback onPress,
  }) {
    return FTile(
      title: Text(title),
      prefix: Icon(
        Icons.power_settings_new,
        color: isOn
            ? context.colorScheme.primary
            : context.colorScheme.secondary,
      ),
      suffix: isLoading ? CupertinoActivityIndicator() : null,
      onPress: onPress,
    );
  }
}
