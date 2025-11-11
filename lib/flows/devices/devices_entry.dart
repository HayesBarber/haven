import 'package:flowkit/flowkit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/devices/provider/devices_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:provider/provider.dart';

class DevicesEntry extends StatelessWidget {
  const DevicesEntry({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DevicesProvider>(context);

    return RefreshableScaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      title: 'Devices',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [
        _buildSegmentControl(context, provider),
        ..._buildDeviceGroups(context, provider),
      ],
    );
  }

  Widget _buildSegmentControl(BuildContext context, DevicesProvider provider) {
    return Padding(
      padding: Styles.tileGroupPadding,
      child: CupertinoSlidingSegmentedControl<DeviceTab>(
        thumbColor: context.colorScheme.primary,
        groupValue: provider.selectedTab,
        onValueChanged: provider.onTabChanged,
        children: const <DeviceTab, Widget>{
          DeviceTab.controllable: Text('Controllable'),
          DeviceTab.interface: Text('Interface'),
        },
      ),
    );
  }

  List<Widget> _buildDeviceGroups(
    BuildContext context,
    DevicesProvider provider,
  ) {
    final List<Widget> groups = [];

    if (provider.selectedTab == DeviceTab.controllable) {
      for (var device in provider.controllableDevices) {
        final tiles = <FTile>[
          FTile(title: const Text('IP'), subtitle: Text(device.ip)),
          FTile(title: const Text('MAC'), subtitle: Text(device.mac)),
          FTile(title: const Text('Type'), subtitle: Text('${device.type}')),
          FTile(
            title: const Text('PowerState'),
            subtitle: Text('${device.powerState}'),
          ),
          FTile(
            title: const Text('Room'),
            subtitle: Text(device.room ?? 'N/A'),
          ),
          FTile(
            title: const Text('LastUpdated'),
            subtitle: Text(
              device.lastUpdated != null
                  ? provider.dateFormat.format(device.lastUpdated!)
                  : 'N/A',
            ),
          ),
          FTile(
            title: const Text('ESP Flag'),
            subtitle: Text('${device.espFlag}'),
          ),
        ];
        groups.add(
          Padding(
            padding: Styles.tileGroupPadding,
            child: FTileGroup(label: Text(device.name), children: tiles),
          ),
        );
      }
    } else {
      for (var device in provider.interfaceDevices) {
        final tiles = <FTile>[
          FTile(title: const Text('IP'), subtitle: Text(device.ip)),
          FTile(title: const Text('MAC'), subtitle: Text(device.mac)),
          FTile(
            title: const Text('LastUpdated'),
            subtitle: Text(
              device.lastUpdated != null
                  ? provider.dateFormat.format(device.lastUpdated!)
                  : 'N/A',
            ),
          ),
          FTile(
            title: const Text('ESP Flag'),
            subtitle: Text('${device.espFlag}'),
          ),
        ];
        groups.add(
          Padding(
            padding: Styles.tileGroupPadding,
            child: FTileGroup(label: Text(device.name), children: tiles),
          ),
        );
      }
    }

    return groups;
  }
}
